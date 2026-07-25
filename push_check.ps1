$ErrorActionPreference = 'Stop'
$LogFile = "d:\SEMESTER 6\Game\FP\Lp\ps_log.txt"

# Test write access
try {
    "Write test" | Out-File -FilePath $LogFile -Encoding UTF8 -Force
    "STEP 1: Write access OK" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
    
    # Check gh
    $ghVersion = gh --version 2>&1
    "STEP 2: gh version = $ghVersion" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
    
    # Check gh auth
    $ghAuth = gh auth token 2>&1
    "STEP 3: gh auth token = $ghAuth" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
    
    # Check git remote
    $remote = git remote -v 2>&1
    "STEP 4: git remote -v = $remote" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
    
    # Try push with force
    $pushResult = git push -u origin main --force 2>&1
    "STEP 5: push result = $pushResult" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
    
    "DONE" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
}
catch {
    "ERROR: $_" | Out-File -FilePath $LogFile -Encoding UTF8 -Append
}

