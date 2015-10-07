:: Ensure C:\Chocolatey\bin is on the path
set /p PATH=<C:\Windows\Temp\PATH

:: Install all the things; for example:
cmd /c choco install python -Version 2.7.6
cmd /c choco install pip
cmd /c choco install git
