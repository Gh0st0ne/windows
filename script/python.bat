if not defined PYTHON_27_x64_URL_MSI set PYTHON_27_x64_URL_MSI=https://www.python.org/ftp/python/2.7.10/python-2.7.10.amd64.msi
set DL_DIR=%TEMP%\python27
set DL_PATH=%DL_DIR%\python-2.7.10.amd64.msi
echo ==^> Creating "%DL_DIR%"
mkdir "%DL_DIR%"
cd /d "%DL_DIR%"
if exist "%SystemRoot%\_download.cmd" (
  call "%SystemRoot%\_download.cmd" "%PYTHON_27_x64_URL_MSI%" "%DL_PATH%"
) else (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%PYTHON_27_x64_URL_MSI%', '%DL_PATH%')" <NUL
)
msiexec /qb /i "%DL_PATH%"
