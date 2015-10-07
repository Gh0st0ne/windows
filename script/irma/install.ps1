$env:Path = "$($env:Path);C:\Program Files (x86)\Git\cmd;C:\Python27;C:\Python27\Scripts"

$projectDir = 'C:\irma'
$installDir = $projectDir + '\irma-probe'
$repoUrl = 'https://github.com/quarkslab/irma-probe'

Write-Host "irma-probe not installed, start clonning..."
New-Item -path $projectDir -type directory
cd $projectDir
git.exe clone --recursive $repoUrl
cd $installDir

Write-Host "start install python requirements..."
pip.exe install -r requirements.txt

Write-Host "Installing the service"
python.exe extras/winsrv/service.py --startup=auto install

Write-Host "Installing done"
