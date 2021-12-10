@Echo On
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

REM ;automatically log in - on windows 10/11 *with* microsoft account
REM ;DO THIS ONLY IF YOU KNOW WHAT YOU ARE DOING. THIS IS UNSECURED AND UNSAFE.
REM ;[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
REM ;"AutoAdminLogon"="1"
REM ;"DefaultDomainName"="<place your domain name here>"
REM ;"DefaultUserName"="<place your username here (you microsoft account email will work)>"
REM ;"DefaultPassword"="<place your microsoft account password here>"
REM ;---------------------------------------------------------------------------
REM ;add recycle bin to file explorer
REM ;---------------------------------------------------------------------------
REM ;Add Task Manager to to context menu
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}" /f
Reg.exe add "HKCR\Directory\Background\shell\Task Manager\command" /ve /t REG_SZ /d "taskmgr" /f
REM ;---------------------------------------------------------------------------
REM ;Windows 11 - restore win 10 context menu
REM ;[HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}]
Reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
REM ;---------------------------------------------------------------------------
REM ; Sets the default Drag & Drop action to be "move".
REM ; credit to:
REM ; https://github.com/runxel/registry-hacks
REM ;; [HKEY_CLASSES_ROOT\*]
REM ;; "DefaultDropEffect"=dword:00000002
REM ;; [HKEY_CLASSES_ROOT\AllFilesystemObjects]
REM ;; "DefaultDropEffect"=dword:00000002
REM ;---------------------------------------------------------------------------
REM ;Add_Shift+Open_command_window_here
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
REM ;---------------------------------------------------------------------------
REM ;Add_Take_Ownership_to_Context_menu
Reg.exe add "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
REM ;---------------------------------------------------------------------------
REM ;AddLibrariesIconToDesktop
REM ;[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]
REM ;"{031E4825-7B94-4dc3-B131-E946B44C8DD5}"=dword:00000000
REM ;---------------------------------------------------------------------------
REM ;AddRegeditToControlPanel
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "InfoTip" /t REG_SZ /d "Starts the Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "System.ControlPanel.Category" /t REG_SZ /d "5" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\DefaultIcon" /ve /t REG_SZ /d "%%SYSTEMROOT%%\regedit.exe" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\Shell\Open\Command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\regedit.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Add Registry Editor to Control Panel" /f
REM ;---------------------------------------------------------------------------
REM ;copy_as_path.reg
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CanonicalName" /t REG_SZ /d "{707C7BC6-685A-4A4D-A275-3966A5A3EFAA}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateHandler" /t REG_SZ /d "{3B1599F9-E00A-4BBF-AD3E-B3F99FA87779}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateSync" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Description" /t REG_SZ /d "@shell32.dll,-30336" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Icon" /t REG_SZ /d "imageres.dll,-5302" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "InvokeCommandOnSelection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-30329" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbHandler" /t REG_SZ /d "{f3d06e7c-1e45-4a26-847e-f9fcdee59be0}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbName" /t REG_SZ /d "copyaspath" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
REM ;---------------------------------------------------------------------------
REM ;EnableCommandPromptHereAlways.reg
Reg.exe delete "HKCR\Drive\shell\cmd" /v "Extended" /f
Reg.exe add "HKCR\Drive\shell\cmd" /f
Reg.exe delete "HKCR\Directory\shell\cmd" /v "Extended" /f
REM ;---------------------------------------------------------------------------
REM ;Remove_3D_Objects_Folder_(64-bit_Windows).reg
Reg.exe add "HKCR\Directory\shell\cmd" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
REM ;---------------------------------------------------------------------------
REM ;Remove_Shortcut_Text.reg
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f
REM ;---------------------------------------------------------------------------
REM ;Web_Searches_OFF.reg
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
REM ;64-bit_Hide_OneDrive_From_File_Explorer.reg
REM ;[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
REM ;"System.IsPinnedToNameSpaceTree"=dword:00000000
REM ;[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
REM ;"System.IsPinnedToNameSpaceTree"=dword:00000000
REM ;---------------------------------------------------------------------------
REM ;Add_Control_Panel_Icon_View_to_File_Explorer.reg
REM ;---------------------------------------------------------------------------
REM ;Add_Open_command_window_here.reg
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{21EC2020-3AEA-1069-A2DD-08002B30309D}" /f
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
REM ;---------------------------------------------------------------------------
REM ;add "p[en with notepad++" to context menu *make sure the path is correct
Reg.exe add "HKCR\*\shell\Open with Notepad\command" /ve /t REG_SZ /d "C:\Program Files\Notepad++\notepad++.exe %%1" /f
REM ;---------------------------------------------------------------------------
REM ;DisableInternetOpenWith.reg
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
REM ;---------------------------------------------------------------------------
REM ;AddRegeditToControlPanel.reg
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "InfoTip" /t REG_SZ /d "Starts the Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "System.ControlPanel.Category" /t REG_SZ /d "5" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\DefaultIcon" /ve /t REG_SZ /d "%%SYSTEMROOT%%\regedit.exe" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\Shell\Open\Command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\regedit.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Add Registry Editor to Control Panel" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
@Echo On
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

REM ;automatically log in - on windows 10/11 *with* microsoft account
REM ;DO THIS ONLY IF YOU KNOW WHAT YOU ARE DOING. THIS IS UNSECURED AND UNSAFE.
REM ;[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
REM ;"AutoAdminLogon"="1"
REM ;"DefaultDomainName"="<place your domain name here>"
REM ;"DefaultUserName"="<place your username here (you microsoft account email will work)>"
REM ;"DefaultPassword"="<place your microsoft account password here>"
REM ;---------------------------------------------------------------------------
REM ;add recycle bin to file explorer
REM ;---------------------------------------------------------------------------
REM ;Add Task Manager to to context menu
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}" /f
Reg.exe add "HKCR\Directory\Background\shell\Task Manager\command" /ve /t REG_SZ /d "taskmgr" /f
REM ;---------------------------------------------------------------------------
REM ;Windows 11 - restore win 10 context menu
REM ;[HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}]
Reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
REM ;---------------------------------------------------------------------------
REM ; Sets the default Drag & Drop action to be "move".
REM ; credit to:
REM ; https://github.com/runxel/registry-hacks
REM ;; [HKEY_CLASSES_ROOT\*]
REM ;; "DefaultDropEffect"=dword:00000002
REM ;; [HKEY_CLASSES_ROOT\AllFilesystemObjects]
REM ;; "DefaultDropEffect"=dword:00000002
REM ;---------------------------------------------------------------------------
REM ;Add_Shift+Open_command_window_here
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
REM ;---------------------------------------------------------------------------
REM ;Add_Take_Ownership_to_Context_menu
Reg.exe add "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg.exe add "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg.exe add "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
Reg.exe add "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
REM ;---------------------------------------------------------------------------
REM ;AddLibrariesIconToDesktop
REM ;[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]
REM ;"{031E4825-7B94-4dc3-B131-E946B44C8DD5}"=dword:00000000
REM ;---------------------------------------------------------------------------
REM ;AddRegeditToControlPanel
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "InfoTip" /t REG_SZ /d "Starts the Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "System.ControlPanel.Category" /t REG_SZ /d "5" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\DefaultIcon" /ve /t REG_SZ /d "%%SYSTEMROOT%%\regedit.exe" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\Shell\Open\Command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\regedit.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Add Registry Editor to Control Panel" /f
REM ;---------------------------------------------------------------------------
REM ;copy_as_path.reg
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CanonicalName" /t REG_SZ /d "{707C7BC6-685A-4A4D-A275-3966A5A3EFAA}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateHandler" /t REG_SZ /d "{3B1599F9-E00A-4BBF-AD3E-B3F99FA87779}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "CommandStateSync" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Description" /t REG_SZ /d "@shell32.dll,-30336" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "Icon" /t REG_SZ /d "imageres.dll,-5302" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "InvokeCommandOnSelection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "MUIVerb" /t REG_SZ /d "@shell32.dll,-30329" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbHandler" /t REG_SZ /d "{f3d06e7c-1e45-4a26-847e-f9fcdee59be0}" /f
Reg.exe add "HKCR\Allfilesystemobjects\shell\windows.copyaspath" /v "VerbName" /t REG_SZ /d "copyaspath" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
REM ;---------------------------------------------------------------------------
REM ;EnableCommandPromptHereAlways.reg
Reg.exe delete "HKCR\Drive\shell\cmd" /v "Extended" /f
Reg.exe add "HKCR\Drive\shell\cmd" /f
Reg.exe delete "HKCR\Directory\shell\cmd" /v "Extended" /f
REM ;---------------------------------------------------------------------------
REM ;Remove_3D_Objects_Folder_(64-bit_Windows).reg
Reg.exe add "HKCR\Directory\shell\cmd" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
REM ;---------------------------------------------------------------------------
REM ;Remove_Shortcut_Text.reg
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f
REM ;---------------------------------------------------------------------------
REM ;Web_Searches_OFF.reg
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
REM ;64-bit_Hide_OneDrive_From_File_Explorer.reg
REM ;[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
REM ;"System.IsPinnedToNameSpaceTree"=dword:00000000
REM ;[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
REM ;"System.IsPinnedToNameSpaceTree"=dword:00000000
REM ;---------------------------------------------------------------------------
REM ;Add_Control_Panel_Icon_View_to_File_Explorer.reg
REM ;---------------------------------------------------------------------------
REM ;Add_Open_command_window_here.reg
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{21EC2020-3AEA-1069-A2DD-08002B30309D}" /f
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
REM ;---------------------------------------------------------------------------
REM ;add "p[en with notepad++" to context menu *make sure the path is correct
Reg.exe add "HKCR\*\shell\Open with Notepad\command" /ve /t REG_SZ /d "C:\Program Files\Notepad++\notepad++.exe %%1" /f
REM ;---------------------------------------------------------------------------
REM ;DisableInternetOpenWith.reg
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
REM ;---------------------------------------------------------------------------
REM ;AddRegeditToControlPanel.reg
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "InfoTip" /t REG_SZ /d "Starts the Registry Editor" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}" /v "System.ControlPanel.Category" /t REG_SZ /d "5" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\DefaultIcon" /ve /t REG_SZ /d "%%SYSTEMROOT%%\regedit.exe" /f
Reg.exe add "HKCR\CLSID\{77708248-f839-436b-8919-527c410f48b9}\Shell\Open\Command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\regedit.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{77708248-f839-436b-8919-527c410f48b9}" /ve /t REG_SZ /d "Add Registry Editor to Control Panel" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
