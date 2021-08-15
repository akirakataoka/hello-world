Get-Date -Format G
Write-Output  "実行中"

$dbPath = (Get-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\VB and VBA Program Settings\日報売上賃金システム\DBファイルパス").accdbFilePath

$access = New-Object -ComObject Access.Application
$access.OpenCurrentDatabase($dbPath)
$access.DoCmd.RunMacro("参照設定")
$access.CloseCurrentDatabase()
$access.Quit()
