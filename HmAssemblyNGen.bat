@echo off

rem �ʏ팠���Ŏ��s����Ă��΁A�Ǘ��Ҍ����Ŏ��s���Ȃ����B

cd /d %~dp0
for /f "tokens=3 delims=\ " %%i in ('whoami /groups^|find "Mandatory"') do set LEVEL=%%i
if NOT "%LEVEL%"=="High" (
powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -Command "Start-Process %~f0 -Verb runas"
exit
)

rem ����ȍ~�̏����͊Ǘ��Ҍ����Ŏ��s�����

@echo off
cd %~dp0
echo %~dp0
SET CURRENT_TMP_DIR=%~dp0
SET CURRENT_TMP_DIR_WITHOUT_LAST_SEPARATOR=%CURRENT_TMP_DIR:~0,-1%
echo %~dp0

HmAppBitChecker hidemaru.exe

if %ERRORLEVEL%==32 (
	echo "�G�ۃG�f�B�^ 32bit��";
    for /R %targetdir% %%A in (*.dll) do (
        C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe install %%~fA /AppBase:"%CURRENT_TMP_DIR_WITHOUT_LAST_SEPARATOR%"
    )
)

if %ERRORLEVEL%==64 (
	echo "�G�ۃG�f�B�^ 64bit��";
    for /R %targetdir% %%A in (*.dll) do (
        echo %%A
        C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe install %%~fA /AppBase:"%CURRENT_TMP_DIR_WITHOUT_LAST_SEPARATOR%"
    )

)


