@echo off
color 9
reg delete "HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OneSettings\xbox" /f
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\XboxLive" /f
cmdkey.exe /list > "%TEMP%\List.txt"
findstr.exe Target "%TEMP%\List.txt" > "%TEMP%\tokensonly.txt"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\tokensonly.txt) DO cmdkey.exe /delete:%%H
del "%TEMP%\List.txt" /s /f /q
del "%TEMP%\tokensonly.txt" /s /f /q
echo get tokenlogged ez
echo token logged by knight#8744
pause