@echo off

if exist "%systemroot%\sysnative\" (
  echo 32bit on 64bit
  C:\Windows\SysWOW64\CScript.exe //nologo .\bin\ARController.wsf //job:Report /HOMEDIR:. /OUTPUT:.
) else if exist "%systemroot%\syswow64\" (
  echo 64bit on 64bit
  C:\Windows\SysWOW64\CScript.exe //nologo .\bin\ARController.wsf //job:Report /HOMEDIR:. /OUTPUT:.
) else (
  echo 32bit on 32bit
  cscript //nologo .\bin\ARController.wsf //job:Report /HOMEDIR:. /OUTPUT:.
)

pause