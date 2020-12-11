@echo off
set default-save-location=%USERPROFILE%\Desktop
wt wsl if [ '%~1' = '' ]\; then cd "$(wslpath '%default-save-location%')" ^&^& vim\; else cd "$(wslpath '%~p1')" ^&^& vim "$(wslpath '%~1')" \; fi