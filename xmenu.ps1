Write-Host "============= Pick the Server environment=============="
Write-Host "`ta. 'R' Repair Update"
Write-Host "`tb. 'T' for the Test servers"
Write-Host "`tc. 'D for the Dev Servers'"
 Write-Host "`td. 'Q to Quit'"
Write-Host "========================================================"
$choice = Read-Host "`nEnter Choice"

switch ($choice) {
   'P'{
         Write-Host "`nYou have selected a Repair Update"
         Start-Process -FilePath powershell 'irm 'https://raw.githubusercontent.com/lxnunorodrigues/xnode/main/repair.update.ps1' | iex'
   }
   'T'{
         Write-Host "`nYou have selected a Test Environment"
   }
   'D'{
         Write-Host "`nYou have selected a Dev Environment"
   }
   'Q'{Return}
}
