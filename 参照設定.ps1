Get-Date -Format G
Write-Output  "���s��"

$dbPath = (Get-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\VB and VBA Program Settings\���񔄏�����V�X�e��\DB�t�@�C���p�X").accdbFilePath

$access = New-Object -ComObject Access.Application
$access.OpenCurrentDatabase($dbPath)
$access.DoCmd.RunMacro("�Q�Ɛݒ�")
$access.CloseCurrentDatabase()
$access.Quit()
