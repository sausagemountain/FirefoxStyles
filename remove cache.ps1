$prof = [System.Io.Path]::GetFileName((Split-Path (Split-Path $MyInvocation.MyCommand.Path)))
$locc = [System.Io.Path]::GetFullPath($env:LOCALAPPDATA)
$dest = [System.Io.Path]::Combine($locc, "Mozilla\Firefox\Profiles", $prof)

[System.IO.Directory]::Delete($dest, 1)