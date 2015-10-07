$env:Path = "$($env:Path);C:\ProgramData\chocolatey\bin"

choco.exe install python --version 2.7.6 -my
choco.exe install git -my

$env:Path = "$($env:Path);C:\Python27"
choco.exe install PyWin32 -my

(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py', 'C:\Users\vagrant\get-pip.py')
python.exe C:\Users\vagrant\get-pip.py
