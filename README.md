# The Fantastic App v0.1

This is the well known “File | New Project | Blazor Web App” (Weather / Counter) but enabled with a database backend via GraphQL (DAB) using Blazor Interactive Auto mode (instead of standard hardcoded const string data

# Instructions

## To set up a local development environment

To use this repo, run... (once https://github.com/microsoft/go-sqlcmd/pull/319 is merged)

```
winget install sqlcmd
sqlcmd create mssql --use https://github.com/stuartpa/DabBlazorSamplePages.git --add-on dab --open vscode
```

And press F5 in Visual Studio Code.  This will build the application and launch the web browser.

## To deploy to Azure

```
sqlcmd deploy --target Azure
```

## To deploy to Microsoft Fabric

```
sqlcmd deploy --target Fabric
```
