@echo off

echo Ensure that your cmd.exe runs as Administrator
echo .

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation

echo Now chocolatey should be ready and we can go ahead
echo .
pause

call refreshenv


choco install adobereader

choco install googlechrome

choco install 7zip.install

choco install vlc

choco install javaruntime

choco install ccleaner

choco install malwarebytes

choco install libreoffice-fresh

choco install anydesk

choco install notepad2-mod


echo All Done. Enjoy!
echo .
Start-Sleep -s 5
