param (
    [String] $BinariesPath,
    [String] $ArtifactsPath,
    [String] $DockerdPath
)

$ErrorActionPreference = "Stop"

$scriptPath = Get-Location
$helpersPath = Join-Path $scriptPath "scripts\utils\powershell\helpers.psm1"
Import-Module $helpersPath

function Main {
    if (Test-Path $BinariesPath) {
        Remove-Dir $BinariesPath
    }
    if (Test-Path $ArtifactsPath) {
        Remove-Dir $ArtifactsPath
    }
    if (Test-Path $DockerdPath) {
        Remove-Dir $DockerdPath
    }
}

Main