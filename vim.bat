@echo off
set default-save-location=%USERPROFILE%\Desktop
set wsl-profile-name=Ubuntu
if "%~1" == "" (
    wt -p "%wsl-profile-name%" --title "vim" wsl bash --login -c 'cd "$(wslpath '\''%default-save-location%'\'')" ^&^& vim'
) else (
    wt -p "%wsl-profile-name%" --title "%~nx1" wsl bash --login -c 'cd "$(wslpath '\''%~dp1'\'')" ^&^& vim "$(wslpath '\''%~1'\'')" '
)
