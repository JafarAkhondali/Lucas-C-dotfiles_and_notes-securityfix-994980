:: Usual cleanup steps
- create a restoration point
- CCCleaner
- Malwarebytes (+ possibly HijackThis)
- AVG
- ProcessExplorer
- cleanmgr.exe
- Defrag
- désactiver l'indexation des disques
- chkdsk /r /f
- sfc /scannow :: restore system files
findstr /c:"[SR]" %windir%\logs\cbs\cbs.log >sfcdetails.txt :: to read CBS.Log

:: Backup
robocopy "C:\Source" "E:\Destination" /E /PURGE

:: Variable substitution
copy "C:\file.txt" "D:\%date:/=-%_file.txt.bak"

F7 in cmd.exe -> history

where <cmd> :: 'which' equivalent
powercfg -h off/on :: as admin, delete hiberfil.sys
msinfo32 :: info composants

::Remove a file as admin :
::1- Take ownership of the files
takeown /f file
takeown /f directory /r
::2- Give yourself full rights on the file:
cacls file /G username:F
::3- Remove file
del file

:: Default .dll owner : NT SERVICE\TrustedInstaller
