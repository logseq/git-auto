# Usage:
#  git-auto ;; use current script dir as git dir, and Start-GitAutoCommitAnoPpush.
#  git-auto -d /path/to/your/note's/dir   ;; set git dir
#  git-auto -p ;; Start-GitAutoCommitAndPush
#  git-auto -s origin -p ;; set remote server
#  git-auto -b main -p ;; set git branch
#  git-auto -i 30 -p ;; set interval seconds
#  git-auto -o -p;; execute once

# parameters
param (
    [Alias('d')]
    [string] $Dir,
    [Alias('i')]
    [int] $Interval = 20,
    [Alias('p')]
    [switch] $PushToServer = $false,
    [Alias('o')]
    [switch] $Once = $false,
    [Alias('s')]
    [string] $Server,
    [Alias('b')]
    [string] $Branch
)

# if -Dir/-d specified
if ($Dir -ne "") {
    Set-Location $Dir
}

# if -Branch/-b specified
if ($Branch -eq "") {
    $Branch = (& git rev-parse --abbrev-ref HEAD)
}

function Start-GitAutoCommitAndPush {
    [string] $status = (& git status)
    if (!$status.Contains("working tree clean")) {
        git add .
        git commit -m "auto commit"
    }
    if ($PushToServer) {
        git push $Server $Branch
    }
}

Get-Date

if ($Once) {
    Start-GitAutoCommitAndPush
}
else {
    while ($true) {
        Start-GitAutoCommitAndPush
        Start-Sleep -Seconds $Interval
    }
}
