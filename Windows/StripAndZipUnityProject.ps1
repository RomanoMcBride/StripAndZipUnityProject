param([string]$ProjectDir)

$ProjectDir = Resolve-Path $ProjectDir
$ProjectName = Split-Path $ProjectDir -Leaf
$Parent = Split-Path $ProjectDir -Parent
$ZipFile = Join-Path $Parent "$ProjectName.zip"

if (Test-Path $ZipFile) {
    Remove-Item $ZipFile -Force
}

Set-Location $ProjectDir

tar -a -c -f $ZipFile `
--exclude=Library `
--exclude=Temp `
--exclude=obj `
--exclude=Builds `
--exclude=Logs `
--exclude=.vs `
--exclude=.vscode `
--exclude=.idea `
--exclude=UserSettings `
--exclude=Recordings `
--exclude=.plastic `
--exclude=.git `
--exclude=*.csproj `
--exclude=*.sln `
--exclude=*.userprefs `
--exclude=*.suo `
--exclude=*.user `
--exclude=.DS_Store `
*

explorer.exe /select,$ZipFile
Write-Host "Created $ZipFile"
