@echo off
echo Install VScode extensions
timeout /t 3
echo 1. Install extensions
echo 2. Download VScode
echo 3. Import settings
echo 4. Open github page
echo 5. Show installed VScode extensions
echo 6. Exit
set /p UserInput=Select option: 
if %UserInput%==1 code --install-extension mcagampan.dark-horizon && code --install-extension ms-vsliveshare.vsliveshare && code --install-extension PKief.material-icon-theme && code --install-extension ritwickdey.LiveServer && code --install-extension redhat.java && code --install-extension streetsidesoftware.code-spell-checker && code --install-extension usernamehw.errorlens && code --install-extension VisualStudioExptTeam.vscodeintellicode && code --install-extension pranaygp.vscode-css-peek
if %UserInput%==2 start "browser" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
if %UserInput%==4 echo .
if %UserInput%==5 cls && code --list-extensions && pause
if %UserInput%==3 echo WARNING this will override all current settings && set /p Warn=Continue?[y/n]:
if %Warn%==y cd %USERPROFILE%\AppData\Roaming\Code\User && curl -o settings.json https://raw.githubusercontent.com/jojihatzz/vscode-config/main/settings.json
@pause
