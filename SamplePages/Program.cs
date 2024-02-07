using System.Diagnostics;
using SamplePages.Components;

var builder = WebApplication.CreateBuilder(args);

var process = new Process
{
    StartInfo = new ProcessStartInfo
    {
        FileName = "sqlcmd",
        Arguments = "config current-context",
        RedirectStandardOutput = true,
        UseShellExecute = false,
        CreateNoWindow = true,
    }
};
process.Start();
var currentContext = process.StandardOutput.ReadToEnd().Trim();
process.WaitForExit();

// Launch a process to run the command "sqlcmd config get-endpoints --name dab@mssql --value port"
process = new Process
{
    StartInfo = new ProcessStartInfo
    {
        FileName = "sqlcmd",
        Arguments = $"config get-endpoints --name dab@{currentContext} --value port",
        RedirectStandardOutput = true,
        UseShellExecute = false,
        CreateNoWindow = true,
    }
};

process.Start();
var port = process.StandardOutput.ReadToEnd().Trim();
process.WaitForExit();

var uri = $"http://localhost:{port}/graphql";
 
var containerAppDnsSuffix = Environment.GetEnvironmentVariable("CONTAINER_APP_ENV_DNS_SUFFIX");
var containerAppName = Environment.GetEnvironmentVariable("CONTAINER_APP_NAME");

if (!string.IsNullOrEmpty(containerAppDnsSuffix) && !string.IsNullOrEmpty(containerAppName))
{
    var parts = containerAppName.Split('-');
    containerAppName = $"{parts[0]}-{"dataapibuilder".Substring(0, 12)}-{parts[2]}";

    uri = $"https://{containerAppName}.{containerAppDnsSuffix}/graphql";
}

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services
    .AddSamplePagesClient()
    .ConfigureHttpClient(client => client.BaseAddress = new Uri(uri));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();
