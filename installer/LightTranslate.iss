#define AppVersion "1.0.0"
[Setup]
AppId={{189DF8E2-3CD7-4EBC-95A8-7891B451A368}
AppName=轻译 / LightTranslate
AppVersion={#AppVersion}
AppPublisher=shanghaiyangming
AppPublisherURL=https://github.com/shanghaiyangming/lighttranslate
AppSupportURL=https://github.com/shanghaiyangming/lighttranslate/issues
AppUpdatesURL=https://github.com/shanghaiyangming/lighttranslate/releases
DefaultDirName={localappdata}\Programs\LightTranslate
DefaultGroupName=轻译
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0
OutputDir=..\dist
OutputBaseFilename=LightTranslate-Setup-{#AppVersion}-windows-x64
SetupIconFile=..\assets\LightTranslate.ico
UninstallDisplayIcon={app}\LightTranslate.exe
LicenseFile=..\LICENSE
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
RestartApplications=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "创建桌面快捷方式 / Create a desktop shortcut"; GroupDescription: "快捷方式 / Shortcuts:"; Flags: unchecked

[Files]
Source: "..\dist\LightTranslate.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\README.md"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\轻译"; Filename: "{app}\LightTranslate.exe"
Name: "{autodesktop}\轻译"; Filename: "{app}\LightTranslate.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\LightTranslate.exe"; Description: "启动轻译 / Launch LightTranslate"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{app}\LightTranslate.exe"; Parameters: "--exit"; Flags: runhidden waituntilterminated; RunOnceId: "ExitLightTranslate"

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueName: "LightTranslate"; Flags: uninsdeletevalue
