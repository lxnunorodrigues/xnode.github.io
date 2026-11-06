function Show-Menu
     {
          param (
                [string]$Title = 'X Node App by ( NR INFORMATICA Loures ) V1.0'
          )
          cls
          Write-Host "================ $Title ================"
      
          Write-Host "A: Press 'A' for Activate Windows / Office [ MAS ]"
          Write-Host "W: Press 'A' for Windows Utility"

          
          Write-Host "1: Press '1' for XCleaner"
          Write-Host "2: Press '2' for Install All Runtimes and DirectX"
          Write-Host "3: Press '3' for Repair - SMB Network Guest Folder ( Windows 11 )"
          Write-Host "Q: Press 'Q' to quit."
     }

    do
    {
          Show-Menu
          $input = Read-Host "Please make a selection"
          switch ($input)
          {
                '1' {
                     cls
                     'You chose option #1'
                     # Run this script
                     Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/lxnunorodrigues/xnode/main/x.cleaner.ps1')
                } '2' {
                     cls
                     'You chose option #2'
                     Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/lxnunorodrigues/xnode/main/runtimesAIO.ps1')
                } '3' {
                     cls
                     'You chose option #3'
                     Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/lxnunorodrigues/xnode/main/smb.repair.ps1')

                } 'A' {
                     cls
                     'You chose option #A'
                     Invoke-Expression (Invoke-RestMethod 'https://get.activated.win')
                } 'W' {
                     cls
                     'You chose option #W'
                     Invoke-Expression (Invoke-RestMethod 'https://christitus.com/win')
                } 'q' {
                     return
                }
          }
          pause
     }
     until ($input -eq 'q')
