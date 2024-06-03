@echo off
:: Solicita permisos de administrador
NET SESSION >NUL 2>NUL
if %errorlevel% neq 0 (
    echo Se requieren permisos de administrador ...
    powershell.exe -Command "Start-Process -FilePath '%comspec%' -ArgumentList '/c \"%~s0\"' -Verb RunAs"
    exit /B
)

@echo off

REM Descargar el instalador de Python en la carpeta Descargas
echo Descargando el instalador de Python...
powershell -Command "& {Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe' -OutFile '%USERPROFILE%\Downloads\python_installer.exe'}"

REM Cambiar al directorio Descargas
cd /d "%USERPROFILE%\Downloads"

REM Instalar Python con la configuracion predeterminada y agregar Python al PATH
echo Instalando Python...
python_installer.exe /quiet InstallAllUsers=1 PrependPath=1

REM Eliminar el instalador
del python_installer.exe

REM Verificar la instalacion de Python
echo Verificando la instalacion de Python...
python --version

REM Verificar la ubicacion de pip
echo Verificando la ubicación de pip...
where pip

REM Verificar la ubicacion de pyinstaller
echo Verificando la ubicación de pyinstaller...
where pyinstaller

REM Instalar PyInstaller
echo Instalando PyInstaller...
pip install pyinstaller

REM Regresar al directorio del script
cd /d "%~dp0"

REM Ejecutar PyInstaller
echo Ejecutando PyInstaller...
powershell -Command "pyinstaller -F remove-threat.py"

REM Mover el archivo generado a la carpeta ossec-agent
echo Moviendo el archivo generado a la carpeta ossec-agent...
move dist\remove-threat.exe "C:\Program Files (x86)\ossec-agent\active-response\bin"

REM Reiniciar el servicio Wazuh en PowerShell
echo Reiniciando el servicio Wazuh...
powershell -Command "Restart-Service -Name wazuh"

echo Instalacion de Python, PyInstaller y ejecucion de PyInstaller completada.
pause
