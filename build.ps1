[CmdletBinding()]
param([switch]$Installer, [switch]$Test)
$ErrorActionPreference = 'Stop'
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
if (!(Test-Path -LiteralPath $compiler)) { throw 'Install .NET Framework 4.8 on 64-bit Windows first.' }
$dist = Join-Path $PSScriptRoot 'dist'
$null = New-Item -ItemType Directory -Force -Path $dist
$target = Join-Path $dist 'LightTranslate.exe'
& $compiler /nologo /target:winexe /platform:x64 /optimize+ /utf8output "/win32icon:$PSScriptRoot\assets\LightTranslate.ico" "/out:$target" /r:System.Windows.Forms.dll /r:System.Drawing.dll /r:System.Net.Http.dll /r:System.Web.Extensions.dll /r:System.Security.dll "$PSScriptRoot\src\LightTranslate.cs"
if ($LASTEXITCODE -ne 0) { throw 'Compilation failed.' }
if ($Test) {
    $process = Start-Process -FilePath $target -ArgumentList '--self-test' -Wait -PassThru
    if ($process.ExitCode -ne 0) { throw "Self-tests failed (exit $($process.ExitCode)); see dist self-test report." }
    Write-Output 'Self-tests passed.'
}
if ($Installer) {
    $iscc = Get-Command ISCC.exe -ErrorAction SilentlyContinue
    if ($env:INNO_SETUP_COMPILER) { $isccPath = $env:INNO_SETUP_COMPILER }
    elseif ($iscc) { $isccPath = $iscc.Source }
    else {
        $isccPath = @("${env:ProgramFiles(x86)}\Inno Setup 7\ISCC.exe", "${env:ProgramFiles(x86)}\Inno Setup 6\ISCC.exe") | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
    }
    if (!$isccPath) { throw 'Install Inno Setup 6/7 or set INNO_SETUP_COMPILER to ISCC.exe.' }
    & $isccPath "$PSScriptRoot\installer\LightTranslate.iss"
    if ($LASTEXITCODE -ne 0) { throw 'Installer compilation failed.' }
}
Write-Output "Built: $target"
