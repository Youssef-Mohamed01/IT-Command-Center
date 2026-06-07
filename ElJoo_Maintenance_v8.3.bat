@echo off
:: ==========================================
:: Ultimate Windows Maintenance Suite v8.3
:: Customized for: E l J o o (Bug Fixes & Stable ASCII)
:: ==========================================
chcp 65001 >nul 2>&1
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :start_tool
) else (
    powershell -Command "Start-Process '%~dpnx0' -Verb RunAs"
    exit /b
)

:start_tool
title IT Command Center - E l J o o
color 07

:menu
cls
echo.
echo ===============================================================================
echo        _,--"^^"--._           _______  ___        _______  _______  _______ 
echo      .'  _     _  '.        ^|       ^|^|   ^|      ^|       ^|^|       ^|^|       ^|
echo     /   (_)   (_)   \       ^|    ___^|^|   ^|      ^|____   ^|^|   _   ^|^|   _   ^|
echo    ^|  __       __    ^|      ^|   ^|___ ^|   ^|       ____^|  ^|^|  ^| ^|  ^|^|  ^| ^|  ^|
echo    ^|   (       )     ^|      ^|    ___^|^|   ^|___   ^| ______^|^|  ^|_^|  ^|^|  ^|_^|  ^|
echo    ^|    `-----'      ^|      ^|   ^|___ ^|       ^|  ^| ^|_____ ^|       ^|^|       ^|
echo     \  _.       ._  /       ^|_______^|^|_______^|  ^|_______^|^|_______^|^|_______^|
echo      `.-.__.__.-.'        
echo ===============================================================================
echo                   SYSTEM MAINTENANCE TOOL v8.3 ^| E l J o o
echo ===============================================================================
echo.
echo  [1] SFC Scan                 [25] Office Status           [49] Reset Store Apps
echo  [2] DISM Repair              [26] Force GPUpdate          [50] Disk Health (SMART)
echo  [3] Disk Check (Chkdsk)      [27] Reset Print Spooler     [51] Export Installed Soft
echo  [4] Delete Temp Files        [28] PC Info (IP/MAC/Specs)  [52] Force Win Activation
echo  [5] Flush DNS                [29] Clear Browsers Cache    [53] Deep Disk Cleanup
echo  [6] Run All Basic Maint      [30] Enable RDP              [54] Show BSOD Dumps
echo  [7] Update Winget Apps       [31] Fix Windows Update      [55] Quick Backup (D:)
echo  [8] Show Open Ports          [32] Export PC Report        [56] Pause Win Updates
echo  [9] Defender Quick Scan      [33] Deep Network Ping       [57] Refresh USB Hubs
echo  [10] Show Startup Progs      [34] Unlock AD Account       [58] Check Uptime
echo  [11] Show Scheduled Tasks    [35] Clear Teams/Outlook     [59] Enable Hidden Admin
echo  [12] Show Admins/Users       [36] Force Time Sync         [60] Clear Display Cache
echo  [13] Full Network Reset      [37] Battery Health Report   [61] Kill Not Responding
echo  [14] Change DNS to Google    [38] Check Pass Expiration   [62] Reset Firewall
echo  [15] Show All WiFi Passwords [39] Restart Explorer.exe    [63] Clear Clipboard
echo  [16] Show Network Shares     [40] Get BitLocker Key       [64] Rebuild Icon Cache
echo  [17] Kill Process By Name    [41] Check/Disable BitLocker [65] Print Network Route
echo  [18] Open Services           [42] Edit Hosts File         [66] Show Env Variables
echo  [19] View System Errors      [43] Block/Unblock USB       [67] Rename PC
echo  [20] Create Restore Point    [44] Remove Win Bloatware    [68] Query Drivers
echo  [21] Perf Options (SpeedUp)  [45] Boot Safe Mode Toggle   [69] Open Perf Monitor
echo  [22] Get Single WiFi Pass    [46] Restart Audio Services  [70] Restart PC Now
echo  [23] Get BIOS Serial Number  [47] Clear Network Creds
echo  [24] Get Win Product Key     [48] Rebuild Search Index    [0] Exit
echo.
echo ===============================================================================
set /p choice="Enter Command ID (1-70): "

if "%choice%"=="1"  goto opt1
if "%choice%"=="2"  goto opt2
if "%choice%"=="3"  goto opt3
if "%choice%"=="4"  goto opt4
if "%choice%"=="5"  goto opt5
if "%choice%"=="6"  goto opt6
if "%choice%"=="7"  goto opt7
if "%choice%"=="8"  goto opt8
if "%choice%"=="9"  goto opt9
if "%choice%"=="10" goto opt10
if "%choice%"=="11" goto opt11
if "%choice%"=="12" goto opt12
if "%choice%"=="13" goto opt13
if "%choice%"=="14" goto opt14
if "%choice%"=="15" goto opt15
if "%choice%"=="16" goto opt16
if "%choice%"=="17" goto opt17
if "%choice%"=="18" goto opt18
if "%choice%"=="19" goto opt19
if "%choice%"=="20" goto opt20
if "%choice%"=="21" goto opt21
if "%choice%"=="22" goto opt22
if "%choice%"=="23" goto opt23
if "%choice%"=="24" goto opt24
if "%choice%"=="25" goto opt25
if "%choice%"=="26" goto opt26
if "%choice%"=="27" goto opt27
if "%choice%"=="28" goto opt28
if "%choice%"=="29" goto opt29
if "%choice%"=="30" goto opt30
if "%choice%"=="31" goto opt31
if "%choice%"=="32" goto opt32
if "%choice%"=="33" goto opt33
if "%choice%"=="34" goto opt34
if "%choice%"=="35" goto opt35
if "%choice%"=="36" goto opt36
if "%choice%"=="37" goto opt37
if "%choice%"=="38" goto opt38
if "%choice%"=="39" goto opt39
if "%choice%"=="40" goto opt40
if "%choice%"=="41" goto opt41
if "%choice%"=="42" goto opt42
if "%choice%"=="43" goto opt43
if "%choice%"=="44" goto opt44
if "%choice%"=="45" goto opt45
if "%choice%"=="46" goto opt46
if "%choice%"=="47" goto opt47
if "%choice%"=="48" goto opt48
if "%choice%"=="49" goto opt49
if "%choice%"=="50" goto opt50
if "%choice%"=="51" goto opt51
if "%choice%"=="52" goto opt52
if "%choice%"=="53" goto opt53
if "%choice%"=="54" goto opt54
if "%choice%"=="55" goto opt55
if "%choice%"=="56" goto opt56
if "%choice%"=="57" goto opt57
if "%choice%"=="58" goto opt58
if "%choice%"=="59" goto opt59
if "%choice%"=="60" goto opt60
if "%choice%"=="61" goto opt61
if "%choice%"=="62" goto opt62
if "%choice%"=="63" goto opt63
if "%choice%"=="64" goto opt64
if "%choice%"=="65" goto opt65
if "%choice%"=="66" goto opt66
if "%choice%"=="67" goto opt67
if "%choice%"=="68" goto opt68
if "%choice%"=="69" goto opt69
if "%choice%"=="70" goto opt70
if "%choice%"=="0"  exit
goto menu

:: -----------------------------------------------------------------------
:opt1
echo Running SFC Scan...
sfc /scannow
pause & goto menu

:: -----------------------------------------------------------------------
:opt2
echo Running DISM Repair...
DISM /Online /Cleanup-Image /RestoreHealth
pause & goto menu

:: -----------------------------------------------------------------------
:opt3
echo Running Chkdsk...
chkdsk C: /f
pause & goto menu

:: -----------------------------------------------------------------------
:opt4
echo Deleting Temp Files...
del /q /f /s "%TEMP%\*" >nul 2>&1
del /q /f /s "C:\Windows\Temp\*" >nul 2>&1
echo Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt5
echo Flushing DNS...
ipconfig /flushdns
pause & goto menu

:: -----------------------------------------------------------------------
:opt6
echo Running All Basic Maintenance...
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
ipconfig /flushdns
del /q /f /s "%TEMP%\*" >nul 2>&1
echo Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt7
echo Updating Winget Apps...
winget upgrade --all
pause & goto menu

:: -----------------------------------------------------------------------
:opt8
echo Showing Open Ports...
netstat -ano
pause & goto menu

:: -----------------------------------------------------------------------
:opt9
echo Defender Quick Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
pause & goto menu

:: -----------------------------------------------------------------------
:opt10
echo Startup Programs:
powershell -Command "Get-CimInstance Win32_StartupCommand | Select-Object Name, Command | Format-Table -AutoSize"
pause & goto menu

:: -----------------------------------------------------------------------
:opt11
echo Scheduled Tasks:
schtasks /query /fo TABLE
pause & goto menu

:: -----------------------------------------------------------------------
:opt12
echo Local Administrators:
net localgroup administrators
echo.
echo Local Users:
net user
pause & goto menu

:: -----------------------------------------------------------------------
:opt13
echo Full Network Reset...
netsh winsock reset
netsh int ip reset
ipconfig /release >nul 2>&1
ipconfig /renew
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Dynamically detect the active network adapter instead of hardcoding "Ethernet"
:opt14
echo Changing DNS to Google (8.8.8.8 / 8.8.4.4)...
powershell -Command "$adapter = Get-NetAdapter | Where-Object {$_.Status -eq 'Up' -and $_.Virtual -eq $false} | Select-Object -First 1; if ($adapter) { Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ServerAddresses '8.8.8.8','8.8.4.4'; Write-Host 'DNS set on adapter:' $adapter.Name } else { Write-Host 'No active adapter found.' }"
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Rewrote PowerShell pipeline to properly scope $name variable across pipeline stages
:opt15
echo Showing All Saved WiFi Passwords:
echo.
powershell -Command "$profiles = (netsh wlan show profiles) | Select-String 'All User Profile\s*:\s*(.+)' | ForEach-Object { $_.Matches.Groups[1].Value.Trim() }; foreach ($name in $profiles) { $keyLine = (netsh wlan show profile name=$name key=clear) | Select-String 'Key Content\s*:\s*(.+)'; $pass = if ($keyLine) { $keyLine.Matches.Groups[1].Value.Trim() } else { '(no password / open network)' }; [PSCustomObject]@{ProfileName=$name; Password=$pass} } | Format-Table -AutoSize"
pause & goto menu

:: -----------------------------------------------------------------------
:opt16
echo Network Shares:
net share
pause & goto menu

:: -----------------------------------------------------------------------
:opt17
set /p pr="Enter Process Name to Kill (e.g., chrome.exe): "
taskkill /IM "%pr%" /F
pause & goto menu

:: -----------------------------------------------------------------------
:opt18
echo Opening Services...
services.msc
goto menu

:: -----------------------------------------------------------------------
:opt19
echo System Errors (Last 50):
echo.
powershell -Command "Get-WinEvent -LogName System -MaxEvents 50 | Where-Object {$_.LevelDisplayName -eq 'Error'} | Format-Table TimeCreated, Id, Message -AutoSize"
pause & goto menu

:: -----------------------------------------------------------------------
:opt20
echo Creating Restore Point...
powershell -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'Manual_Maintenance'"
pause & goto menu

:: -----------------------------------------------------------------------
:opt21
echo Opening Performance Options...
SystemPropertiesPerformance.exe
goto menu

:: -----------------------------------------------------------------------
:opt22
set /p wifiname="Enter exact Wi-Fi name: "
netsh wlan show profile name="%wifiname%" key=clear
pause & goto menu

:: -----------------------------------------------------------------------
:opt23
echo BIOS Serial Number:
powershell -Command "Get-CimInstance -ClassName Win32_Bios | Select-Object -ExpandProperty SerialNumber"
pause & goto menu

:: -----------------------------------------------------------------------
:opt24
echo Windows Product Keys:
powershell -Command "(Get-CimInstance -Query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"
powershell -Command "(Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform').BackupProductKeyDefault"
pause & goto menu

:: -----------------------------------------------------------------------
:opt25
echo Office License Status:
if exist "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" (
    cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus
) else if exist "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" (
    cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus
) else (
    echo Office 2016/2019/365 script not found.
)
pause & goto menu

:: -----------------------------------------------------------------------
:opt26
echo Forcing Group Policy Update...
gpupdate /force
pause & goto menu

:: -----------------------------------------------------------------------
:opt27
echo Resetting Print Spooler...
net stop spooler
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*" >nul 2>&1
net start spooler
echo Print Spooler Reset Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt28
echo PC Information:
echo.
echo Hostname:
hostname
echo.
echo IP Address(es):
ipconfig | findstr IPv4
echo.
echo MAC Address(es):
getmac /v /fo table /nh
echo.
powershell -Command "Write-Host 'OS Architecture : ' -NoNewline; (Get-CimInstance Win32_OperatingSystem).OSArchitecture; Write-Host 'CPU Name        : ' -NoNewline; (Get-CimInstance Win32_Processor).Name; Write-Host 'RAM (GB)        : ' -NoNewline; [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)"
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Added Edge cache path; suppress errors on missing paths
:opt29
echo Clearing Browser Caches...
taskkill /F /IM chrome.exe  /T >nul 2>&1
taskkill /F /IM msedge.exe  /T >nul 2>&1
taskkill /F /IM firefox.exe /T >nul 2>&1
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
    echo Chrome cache cleared.
)
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    del /q /f /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
    echo Edge cache cleared.
)
if exist "%LOCALAPPDATA%\Mozilla\Firefox\Profiles" (
    for /d %%p in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do (
        if exist "%%p\cache2" del /q /f /s "%%p\cache2\*.*" >nul 2>&1
    )
    echo Firefox cache cleared.
)
echo Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt30
echo Enabling RDP...
powershell -Command "Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name 'fDenyTSConnections' -Value 0; Enable-NetFirewallRule -DisplayGroup 'Remote Desktop'"
echo RDP Enabled.
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Stop cryptsvc and msiserver before deleting SoftwareDistribution (prevents locked files)
:opt31
echo Fixing Windows Update...
net stop wuauserv  >nul 2>&1
net stop bits      >nul 2>&1
net stop cryptsvc  >nul 2>&1
net stop msiserver >nul 2>&1
rmdir /s /q "C:\Windows\SoftwareDistribution" >nul 2>&1
rmdir /s /q "C:\Windows\System32\catroot2"    >nul 2>&1
net start cryptsvc
net start msiserver
net start bits
net start wuauserv
echo Windows Update cache cleared and services restarted.
pause & goto menu

:: -----------------------------------------------------------------------
:opt32
echo Generating PC Report...
set "reportFile=%USERPROFILE%\Desktop\PC_Report.txt"
hostname > "%reportFile%"
echo. >> "%reportFile%"
powershell -Command "Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike '127*' -and $_.InterfaceAlias -notlike '*Loopback*'} | Select-Object InterfaceAlias, IPAddress | Out-String" >> "%reportFile%"
powershell -Command "(Get-CimInstance Win32_Processor).Name | Out-String" >> "%reportFile%"
powershell -Command "Get-CimInstance -ClassName Win32_Bios | Select-Object -ExpandProperty SerialNumber | Out-String" >> "%reportFile%"
echo Report saved to Desktop as PC_Report.txt
pause & goto menu

:: -----------------------------------------------------------------------
:opt33
echo Network Ping + Traceroute to 8.8.8.8...
ping 8.8.8.8 -n 8
tracert -d -h 10 8.8.8.8
pause & goto menu

:: -----------------------------------------------------------------------
:opt34
set /p aduser="Enter exact AD Username: "
net user %aduser% /active:yes /domain
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Added Teams 2.0 path (MSTeams_ package) alongside classic Teams path
:opt35
echo Clearing Teams and Outlook cache...
taskkill /F /IM outlook.exe /T  >nul 2>&1
taskkill /F /IM ms-teams.exe /T >nul 2>&1
taskkill /F /IM msteams.exe /T  >nul 2>&1
if exist "%APPDATA%\Microsoft\Teams" (
    rmdir /s /q "%APPDATA%\Microsoft\Teams" >nul 2>&1
    echo Classic Teams cache cleared.
)
for /d %%p in ("%LOCALAPPDATA%\Packages\MSTeams_*") do (
    if exist "%%p\LocalCache" rmdir /s /q "%%p\LocalCache" >nul 2>&1
    echo Teams 2.0 cache cleared.
)
if exist "%LOCALAPPDATA%\Microsoft\Outlook" (
    del /q /f /s "%LOCALAPPDATA%\Microsoft\Outlook\*.ost" >nul 2>&1
    echo Outlook OST cache cleared.
)
echo Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt36
echo Syncing System Time...
net start w32time >nul 2>&1
w32tm /resync /force
pause & goto menu

:: -----------------------------------------------------------------------
:opt37
echo Generating Battery Report...
powercfg /batteryreport /output "%TEMP%\Battery_Report.html"
echo Opening Battery Report...
start "" "%TEMP%\Battery_Report.html"
pause & goto menu

:: -----------------------------------------------------------------------
:opt38
set /p checkuser="Enter Username: "
net user %checkuser% | findstr /C:"Password expires"
pause & goto menu

:: -----------------------------------------------------------------------
:opt39
echo Restarting Explorer...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
echo Explorer restarted.
pause & goto menu

:: -----------------------------------------------------------------------
:opt40
echo BitLocker Recovery Keys:
echo.
powershell -Command "Get-CimInstance -Namespace root/CIMV2/Security/MicrosoftVolumeEncryption -ClassName Win32_EncryptableVolume | ForEach-Object { $drive = $_.DriveLetter; $result = $_ | Invoke-CimMethod -MethodName GetRecoveryKeyPassword; [PSCustomObject]@{ Drive = $drive; RecoveryKey = $result.VolumeKeyPassword } } | Format-Table -AutoSize"
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Renamed internal variable to choice_bl to avoid collision with main menu %choice%
:opt41
manage-bde -status
set /p choice_bl="Disable BitLocker? (Y/N): "
if /I "%choice_bl%"=="Y" (
    set /p bit_letter="Enter Drive Letter (e.g., C:): "
    manage-bde -off %bit_letter%
)
pause & goto menu

:: -----------------------------------------------------------------------
:opt42
notepad.exe C:\Windows\System32\drivers\etc\hosts
goto menu

:: -----------------------------------------------------------------------
:opt43
echo [1] Block USB  [2] Unblock USB
set /p usb_c="Choice: "
if "%usb_c%"=="1" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d 4 /f
    echo USB storage blocked.
)
if "%usb_c%"=="2" (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d 3 /f
    echo USB storage unblocked.
)
pause & goto menu

:: -----------------------------------------------------------------------
:opt44
echo Removing Common Bloatware...
powershell -Command "Get-AppxPackage *CandyCrush*    | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *Xbox*           | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *BingNews*       | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *BingWeather*    | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *ZuneMusic*      | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *ZuneVideo*      | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *MicrosoftSolitaire* | Remove-AppxPackage -ErrorAction SilentlyContinue"
echo Bloatware removal done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt45
echo [1] Enable Safe Mode (takes effect on next restart)
echo [2] Return to Normal Mode (takes effect on next restart)
set /p smc="Choice: "
if "%smc%"=="1" (
    bcdedit /set {current} safeboot minimal
    echo Safe Mode enabled. Restart your PC to boot into Safe Mode.
)
if "%smc%"=="2" (
    bcdedit /deletevalue {current} safeboot
    echo Normal boot restored. Restart your PC.
)
pause & goto menu

:: -----------------------------------------------------------------------
:opt46
echo Restarting Audio Services...
net stop audiosrv  >nul 2>&1
net stop AudioEndpointBuilder >nul 2>&1
net start AudioEndpointBuilder
net start audiosrv
echo Audio Services Restarted.
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Rewrote opt47 - the original pipe-into-for-loop was invalid batch syntax.
::      Now uses a temp file approach which is reliable.
:opt47
echo Clearing Saved Network Credentials...
set "tmpCreds=%TEMP%\cred_list.txt"
cmdkey /list > "%tmpCreds%"
for /f "tokens=2 delims=: " %%a in ('findstr /i "Target" "%tmpCreds%"') do (
    cmdkey /delete:%%a >nul 2>&1
)
del "%tmpCreds%" >nul 2>&1
echo Network credentials cleared.
pause & goto menu

:: -----------------------------------------------------------------------
:opt48
echo Rebuilding Search Index...
powershell -Command "Stop-Service WSearch -Force -ErrorAction SilentlyContinue; Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows Search' -Name 'SetupCompletedSuccessfully' -Value 0; Start-Service WSearch"
echo Search index will rebuild in the background.
pause & goto menu

:: -----------------------------------------------------------------------
:opt49
wsreset.exe
echo Store apps reset.
pause & goto menu

:: -----------------------------------------------------------------------
:opt50
echo Disk SMART Health Status:
powershell -Command "Get-CimInstance Win32_DiskDrive | Select-Object Model, Status, Size | Format-Table -AutoSize"
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Moved redirect (>) outside the PowerShell -Command string; use Out-File inside PS instead
:opt51
echo Exporting Installed Software...
powershell -Command "Get-ItemProperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*','HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion | Where-Object {$_.DisplayName -ne $null} | Sort-Object DisplayName | Out-File -FilePath ([System.Environment]::GetFolderPath('Desktop') + '\Installed_Programs.txt') -Encoding UTF8"
echo Saved to Desktop as Installed_Programs.txt
pause & goto menu

:: -----------------------------------------------------------------------
:opt52
echo Activating Windows...
slmgr /ato
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Run sageset first (silently) so sagerun:1 actually has tasks to perform
:opt53
echo Running Deep Disk Cleanup...
cleanmgr /sageset:1
cleanmgr /sagerun:1
echo Done.
pause & goto menu

:: -----------------------------------------------------------------------
:opt54
echo BSOD Minidump Files:
echo.
if exist "C:\Windows\Minidump" (
    dir "C:\Windows\Minidump"
) else (
    echo No minidump folder found. No BSODs recorded or dumps disabled.
)
pause & goto menu

:: -----------------------------------------------------------------------
:opt55
echo Quick Backup to D:\User_Backup...
if not exist "D:\" (
    echo D: drive not found. Backup cancelled.
    pause & goto menu
)
robocopy "%USERPROFILE%\Desktop" "D:\User_Backup\Desktop" /E /R:0 /W:0
pause & goto menu

:: -----------------------------------------------------------------------
:opt56
echo Pausing Windows Updates...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f
echo Windows automatic updates paused.
pause & goto menu

:: -----------------------------------------------------------------------
:opt57
echo Refreshing USB Hubs...
pnputil /scan-devices
pause & goto menu

:: -----------------------------------------------------------------------
:opt58
echo System Uptime:
echo.
powershell -Command "(Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime"
pause & goto menu

:: -----------------------------------------------------------------------
:opt59
echo Enabling Hidden Administrator Account...
net user administrator /active:yes
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Added font cache deletion alongside shader cache; added exist checks
:opt60
echo Clearing Display and Font Caches...
if exist "%LOCALAPPDATA%\Microsoft\Windows\D3DShaderCache" (
    del /q /f /s "%LOCALAPPDATA%\Microsoft\Windows\D3DShaderCache\*.*" >nul 2>&1
    echo D3D Shader Cache cleared.
)
if exist "%windir%\System32\FNTCACHE.DAT" (
    takeown /f "%windir%\System32\FNTCACHE.DAT" >nul 2>&1
    del /f "%windir%\System32\FNTCACHE.DAT" >nul 2>&1
    echo Font cache cleared.
)
echo Done. Restart may be required.
pause & goto menu

:: -----------------------------------------------------------------------
:opt61
echo Killing Non-Responding Processes...
taskkill /f /fi "status eq not responding"
pause & goto menu

:: -----------------------------------------------------------------------
:opt62
echo Resetting Firewall to Defaults...
netsh advfirewall reset
pause & goto menu

:: -----------------------------------------------------------------------
:opt63
echo Clearing Clipboard...
powershell -Command "Set-Clipboard -Value $null" >nul 2>&1
echo Clipboard cleared.
pause & goto menu

:: -----------------------------------------------------------------------
:: FIX: Added clearing of Win10/11 explorer icon cache files (iconcache_*.db), not just IconCache.db
:opt64
echo Rebuilding Icon Cache...
taskkill /f /im explorer.exe >nul 2>&1
del /a /f /q "%LOCALAPPDATA%\IconCache.db" >nul 2>&1
del /a /f /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache*.db" >nul 2>&1
start explorer.exe
echo Icon cache cleared and Explorer restarted.
pause & goto menu

:: -----------------------------------------------------------------------
:opt65
echo Network Route Table:
route print
pause & goto menu

:: -----------------------------------------------------------------------
:opt66
echo Environment Variables:
echo.
set
pause & goto menu

:: -----------------------------------------------------------------------
:opt67
set /p newname="Enter New PC Name: "
powershell -Command "Rename-Computer -NewName '%newname%' -Force"
echo Restart PC to apply the new name.
pause & goto menu

:: -----------------------------------------------------------------------
:opt68
echo Installed Drivers:
driverquery
pause & goto menu

:: -----------------------------------------------------------------------
:opt69
perfmon
goto menu

:: -----------------------------------------------------------------------
:opt70
echo Restarting PC in 5 seconds...
shutdown /r /t 5
pause & goto menu
