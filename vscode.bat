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

if %UserInput%==1 (
    code --install-extension aaron-bond.better-comments@3.0.2
    code --install-extension adpyke.codesnap@1.3.4
    code --install-extension amiralizadeh9480.cpp-helper@0.3.4
    code --install-extension christian-kohler.npm-intellisense@1.4.5
    code --install-extension christian-kohler.path-intellisense@2.9.0
    code --install-extension continue.continue@0.8.52
    code --install-extension cschlosser.doxdocgen@1.4.0
    code --install-extension dotjoshjohnson.xml@2.5.1
    code --install-extension eamodio.gitlens@15.5.1
    code --install-extension elanandkumar.el-vsc-product-icon-theme@0.1.8
    code --install-extension enkia.tokyo-night@1.0.9
    code --install-extension esbenp.prettier-vscode@11.0.0
    code --install-extension firefox-devtools.vscode-firefox-debug@2.9.10
    code --install-extension fisheva.eva-theme@2.7.1
    code --install-extension formulahendry.auto-rename-tag@0.1.10
    code --install-extension github.copilot@1.235.0
    code --install-extension github.copilot-chat@0.21.0
    code --install-extension jdinhlife.gruvbox@1.19.1
    code --install-extension jeff-hykin.better-cpp-syntax@1.27.1
    code --install-extension jojihatzz.codemapper@0.0.2
    code --install-extension josetr.cmake-language-support-vscode@0.0.9
    code --install-extension mcagampan.dark-horizon@0.4.2
    code --install-extension meganrogge.template-string-converter@0.6.1
    code --install-extension miguelsolorio.fluent-icons@0.0.18
    code --install-extension monokai.theme-monokai-pro-vscode@1.3.2
    code --install-extension ms-dotnettools.vscode-dotnet-runtime@2.1.7
    code --install-extension ms-edgedevtools.vscode-edge-devtools@2.1.6
    code --install-extension ms-python.python@2024.16.0
    code --install-extension ms-python.vscode-pylance@2024.9.2
    code --install-extension ms-toolsai.jupyter@2024.9.1
    code --install-extension ms-toolsai.jupyter-keymap@1.1.2
    code --install-extension ms-toolsai.jupyter-renderers@1.0.19
    code --install-extension ms-vscode.cmake-tools@1.19.52
    code --install-extension ms-vscode.cpptools@1.21.6
    code --install-extension ms-vscode.cpptools-extension-pack@1.3.0
    code --install-extension ms-vscode.cpptools-themes@2.0.0
    code --install-extension ms-vsliveshare.vsliveshare@1.0.5941
    code --install-extension msjsdiag.vscode-react-native@1.13.0
    code --install-extension oderwat.indent-rainbow@8.3.1
    code --install-extension pkief.material-icon-theme@5.11.1
    code --install-extension pnp.polacode@0.3.4
    code --install-extension pranaygp.vscode-css-peek@4.4.1
    code --install-extension redhat.java@1.35.1
    code --install-extension ritwickdey.liveserver@5.7.9
    code --install-extension robbowen.synthwave-vscode@0.1.15
    code --install-extension streetsidesoftware.code-spell-checker@3.0.1
    code --install-extension teabyii.ayu@1.0.5
    code --install-extension tobiah.language-pde@1.4.6
    code --install-extension twxs.cmake@0.0.17
    code --install-extension usernamehw.errorlens@3.20.0
    code --install-extension visualprogrammingx.sourcecodevisualizer@0.1.9
    code --install-extension visualstudioexptteam.intellicode-api-usage-examples@0.2.8
    code --install-extension visualstudioexptteam.vscodeintellicode@1.3.1
    code --install-extension vscjava.vscode-gradle@3.16.4
    code --install-extension vscjava.vscode-java-debug@0.58.0
    code --install-extension vscjava.vscode-java-dependency@0.24.0
    code --install-extension vscjava.vscode-java-pack@0.29.0
    code --install-extension vscjava.vscode-java-test@0.42.0
    code --install-extension vscjava.vscode-maven@0.44.0
    code --install-extension wayou.vscode-todo-highlight@1.0.5
    code --install-extension wesbos.theme-cobalt2@2.4.3
    code --install-extension xabikos.javascriptsnippets@1.8.0
)

if %UserInput%==2 (
    start "browser" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
)

if %UserInput%==4 (
    echo Opening GitHub page...
    start "browser" "https://github.com/jojihatzz/vscodecity"
)

if %UserInput%==5 (
    cls && code --list-extensions && pause
)

if %UserInput%==3 (
    echo WARNING this will override all current settings
    set /p Warn=Continue?[y/n]: 
    if %Warn%==y (
        cd %USERPROFILE%\AppData\Roaming\Code\User && curl -o settings.json https://raw.githubusercontent.com/jojihatzz/vscodecity/refs/heads/main/settings.json
    )
)

@pause
