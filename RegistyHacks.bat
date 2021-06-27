@Echo On
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin
rem add copy as path from context menu to any file.
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CanonicalName" /t REG_SZ /d "{707C7BC6-685A-4A4D-A275-3966A5A3EFAA}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateHandler" /t REG_SZ /d "{3B1599F9-E00A-4BBF-AD3E-B3F99FA87779}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateSync" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Description" /t REG_SZ /d "@shell32.dll,-30336" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Icon" /t REG_SZ /d "imageres.dll,-5302" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "InvokeCommandOnSelection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-30329" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbHandler" /t REG_SZ /d "{f3d06e7c-1e45-4a26-847e-f9fcdee59be0}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbName" /t REG_SZ /d "copyaspath" /f

rem add shift+open command window here for any folder with right click 
Reg.exe add "HKCR\Directory\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe add "HKCR\Directory\shell\cmd2" /v "Extended" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Directory\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /v "Extended" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /v "Extended" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Drive\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /v "Extended" /t REG_SZ /d "" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f

rem add open comman window here
Reg.exe add "HKCR\Directory\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe delete "HKCR\Directory\shell\cmd2" /v "Extended" /f
Reg.exe add "HKCR\Directory\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Directory\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe delete "HKCR\Directory\Background\shell\cmd2" /v "Extended" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\Background\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe delete "HKCR\Drive\shell\cmd2" /v "Extended" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\Drive\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Drive\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /ve /t REG_SZ /d "@shell32.dll,-8506" /f
Reg.exe delete "HKCR\LibraryFolder\Background\shell\cmd2" /v "Extended" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /v "Icon" /t REG_SZ /d "imageres.dll,-5323" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\LibraryFolder\Background\shell\cmd2\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f

rem turn off web search
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f

rem turn on web search
rem Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f
rem Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "1" /f

rem add take ownership option in context menu
Reg.exe add "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f

rem remove take ownership from ontext menu
REM Reg.exe delete "HKCR\*\shell\runas" /f
REM Reg.exe delete "HKCR\Directory\shell\runas" /f

rem remove shortcut text when creating a shortcut
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f

rem restore shortcut text
REM Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /f
REM Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f

rem Remove 3D Objects Folder (64-bit Windows)
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f

REM Restore 3D Objects Folder (64-bit Windows)
REM Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
REM Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f

rem Add_Recycle_Bin_to_File_Explorer
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}" /f

REM remove_Recycle_Bin_to_File_Explorer
REM Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}" /f

REM Add_Open_With_Notepad++_to_Context_Menu
Reg.exe add "HKCR\*\shell\Open with Notepad\command" /ve /t REG_SZ /d "C:\Program Files\Notepad++\notepad++.exe %%1" /f

REM Remove_Open_With_Notepad_from_Context_Menu_(Default)
REM Reg.exe add "HKCR\*\shell\Open with Notepad\command" /ve /t REG_SZ /d "C:\Program Files\Notepad++\notepad++.exe %%1" /f

REM EnableCommandPromptHereAlways
Reg.exe delete "HKCR\Drive\shell\cmd" /v "Extended" /f
Reg.exe add "HKCR\Drive\shell\cmd" /f
Reg.exe delete "HKCR\Directory\shell\cmd" /v "Extended" /f
Reg.exe add "HKCR\Directory\shell\cmd" /f

REM DisableCommandPromptHereAlways
REM Reg.exe add "HKCR\Drive\shell\cmd" /v "Extended" /t REG_SZ /d "" /f
REM Reg.exe add "HKCR\Directory\shell\cmd" /v "Extended" /t REG_SZ /d "" /f

DisableInternetOpenWith
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f


REM ReEnableInternetOpenWith
REM Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /f
REM Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
REM Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /f
REM Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f

rem add control panel to explorer
rem category view
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{26EE0668-A00A-44D7-9371-BEB064C98683}" /f
rem icon view
rem Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{21EC2020-3AEA-1069-A2DD-08002B30309D}" /f

REM Remove_Control_Panel_from_File_Explorer_(Default)
REM Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{26EE0668-A00A-44D7-9371-BEB064C98683}" /f
REM Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{21EC2020-3AEA-1069-A2DD-08002B30309D}" /f

rem add regedit to control panel
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "InfoTip" /t REG_SZ /d "Starts the Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "System.ControlPanel.Category" /t REG_SZ /d "5" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\DefaultIcon" /ve /t REG_SZ /d "%%SYSTEMROOT%%\regedit.exe" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\Shell\Open\Command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\regedit.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Add Registry Editor to Control Panel" /f

REM RemoveRegeditFromControlPanel
REM Reg.exe delete "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /f
REM Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /f


rem add libraries to desktop
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /t REG_DWORD /d "0" /f

rem RemoveLibrariesIconFromDesktop
REM Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
REM Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f

rem powersaver
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
rem high performance
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
rem ultimate performance
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
rem disables Telemetry
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v "Allow Telemetry" /t REG_DWORD /d 0 /f

rem "Let me set a different input method for each app window"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9E1E078092000000" /f



Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof



