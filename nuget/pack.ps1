if ($env:BUILD_OPTS -eq "--xplat") {
    exit
}

$project_file = ".\src\runtime\Python.Runtime.csproj"

Write-Host "Creating NuGet package from $project_file"

& .\tools\nuget\nuget.exe pack $project_file -OutputDirectory .\nuget
