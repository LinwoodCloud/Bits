; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Setonix"
#ifndef MyAppVersion
#define MyAppVersion "1.0"
#endif
#define MyAppPublisher "Linwood"
#define MyAppURL "https://www.linwood.dev"
#define MyAppExeName "setonix.exe" 
#define BaseDirRelease "build\windows\x64\runner\Release"
#define RunnerSourceDir "windows\runner"


[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AFEA034B-35A4-44A9-9FAE-33F5A2AE860B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf64}\{#MyAppPublisher}\{#MyAppName}  
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=..\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=build\windows\x64
OutputBaseFilename=linwood-setonix-windows-setup
SetupIconFile={#RunnerSourceDir}\resources\app_icon.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
Uninstallable=not WizardIsTaskSelected('portablemode')
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]     
Name: "desktopicon"; Description: "Create a Desktop shortcut"
Name: "startmenu"; Description: "Create a Start Menu entry"         


[Files]
Source: "{#BaseDirRelease}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseDirRelease}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system filess

[Icons]
Name: "{group}\Visit Website"; Filename: "https://www.linwood.dev/"
Name: "{group}\Setonix Documentation"; Filename: "https://setonix.linwood.dev/"
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent