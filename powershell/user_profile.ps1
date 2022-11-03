Import-Module Terminal-Icons

# Alias
Set-Alias vim nvim
Set-Alias ll ls 
Set-Alias g git
# Set-Alias tig 'C:\Users\tmkm\scoop\apps\git\current\bin\tig.exe'
# Set-Alias less 'C:\Users\tmkm\scoop\apps\git\current\bin\less.exe'


# Env
# $env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"
$env:XDG_CONFIG_HOME = "C:\Users\tmkm\.config"
$env:XDG_DATA_HOME = "C:\Users\tmkm\.data"

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
