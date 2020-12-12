@echo off
set default-save-location=%USERPROFILE%\Desktop
set wsl-profile-name=Ubuntu
wt -p "%wsl-profile-name%" wsl bash --login -c 'if [ '\''%~1'\'' = '\'''\'' ]\; then cd "$(wslpath '\''%default-save-location%'\'')" ^&^& vim\; else cd "$(wslpath '\''%~dp1'\'')" ^&^& vim "$(wslpath '\''%~1'\'')" \; fi'