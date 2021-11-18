@echo off
title SyScan
@REM License
: MIT License
@REM About
: Found This Script Sitting In My Hard Drive
: Edited The Script And Found Out It Was just sfc /scannow
: I Improved It And Added Some More Features To It
: And Named It SyScan
@REM Version and Whats New
: VERSION 1.15 (Betas Unavailable.)
: Still In Development
: Made By 0wen
: Time Made: 2020
: Ended x86 CPU Architecture Support
: ARM Support Ending Soon.
@REM Advertising (Ignore)
: Want To Speed Up Your PC?
: Well Check Out Super Optimizer Tool
: Super Optimizer Tool Repo Github Page.
: If You Want The First And Oldest Version With More Features
: Go To My Website (On The Respiratory You See A Website Link)
: PROS
: Cleans And Speeds Up Your PC
: Debloat Windows
: Support For Windows Both Windows 10 And Windows 11 (NEW!)
: Supports Legacy Versions Of Windows 10 Such As 1709 (Experimental)
: Disables Telemetry
: Disables Third Party Applications Telemetry (Such as CCleaner And Visual Studio Code)
: Disables Geforce Experience Telemetry 
: CONS
: Still In Development
: Disables Windows Search
: Disables Windows Defender
: Removes Every Bloatware
@REM Future Updates
: Future Updates
: GUI
: Virus Scan
: etc
@rem SCAN
@rem SCAN PREPARING
color 2
echo Preparing Stuff Before Scanning
: Checking If ECHO Works
@rem Echo Checking
echo Checking if ECHO Works
echo
echo Status: OK
pause
cls
@rem DISM Checking
echo Checking IF DISM Works
DISM
echo Status OK
pause
cls
echo Checking If SFC Works
sfc
echo Status: OK
pause
cls
goto :start
:start
color 7
echo Welcome To SyScan %username%
echo Program Launched At %time%
echo WinSpecs Activated.
echo Winspecs Output.
echo CPU Architecture Is %PROCESSOR_ARCHITECTURE%
echo Windows 10 Detected
pause
if %PROCESSOR_ARCHITECTURE%==ARM goto :ARMMODE
if %PROCESSOR_ARCHITECTURE%==ARM64 goto :ARM64MODE
if %PROCESSOR_ARCHITECTURE%==AMD64 goto :Default
if %PROCESSOR_ARCHITECTURE%==i386 goto :CompMode
@rem Arm Architecture Mode
:CompMode
cls
title SyScan x86 Edition
color 4
echo i386 (x86) Architecture Detected
echo Some Features May Not Work.
echo Continue?
pause
color 7
echo This Tool Scans Your System
echo If Your System Is Acting Buggy
echo This Might Fix Your Problem
echo Continue?
pause
cls
goto :choice
:choice
echo Pre-Launch (DISM)
DISM.exe /Cleanup-Wim
echo DISM Complete.
echo Running SFC /Scannow
sfc /scannow
echo SFC /Scannow Complete
echo Running DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo Cleanup Complete.
pause
goto :exit
:ARMMODE
cls
title SyScan ARM Edition
echo ARM Architecture Detected.
echo ARM Architecture Will Be Updated Every 1 Year
echo This Tool Scans Your System
echo If Your System Is Acting Buggy
echo This Might Fix Your Problem
echo Continue?
pause
cls
goto :choice
:choice
echo Pre-Launch (DISM)
DISM.exe /Cleanup-Wim
echo DISM Complete.
echo Running SFC /Scannow
sfc /scannow
echo SFC /Scannow Complete
echo Running DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo Cleanup Complete.
pause
goto :exit
:ARM64MODE
cls
color 4
title SyScan ARM64 Edition
echo ARM64 Architecture Detected.
echo This Tool Scans Your System
echo If Your System Is Acting Buggy
echo This Might Fix Your Problem
echo Continue?
pause
cls
goto :choice
:choice
echo Pre-Launch (DISM)
DISM.exe /Cleanup-Wim
echo DISM Complete.
echo Running SFC /Scannow
sfc /scannow
echo SFC /Scannow Complete
echo Running DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo Cleanup Complete.
pause
goto :exit
:Default
cls
@REM Almost There
color 3
echo AMD64 (x64) CPU Detected
echo This Tool Scans Your System
echo If Your System Is Acting Buggy
echo This Might Fix Your Problem
echo Continue?
pause
cls
goto :choice
:choice
@REM Pre Launch
echo Pre-Launch (DISM)
title Cleanup Wim
DISM.exe /Cleanup-Wim
echo DISM Complete.
@REM SFC /SCANNOW
echo Running SFC /Scannow
title SFC Scannow
echo SFC /scannow Launched at %time%
sfc /scannow
echo SFC /Scannow Completed at %time%
echo SFC /Scannow Complete
@REM DISM
title DISM
echo Running DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth
cls
@REM Disk Cleanup
title Disk Cleanup
echo Running Disk Cleanup
start cleanmgr.exe
echo NOTE: You Need To Manually Click Your Drive And Click On OK
echo Continue if Done.
pause
echo Cleanup Complete.
echo Turning Off Winspecs
echo est: 0 Seconds!
echo Time Finished %time%
echo Status: OK
echo User Status: OK
pause
goto :exit
:exit