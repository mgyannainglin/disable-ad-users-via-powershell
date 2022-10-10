## Disable the Active Directory users from powershell
### List the user with samAccountName
1. Type below command in powershell with administrator mode
```
 Get-ADUser -Filter * | Select-Object Name, SAMAccountName | Export-Csv -Path E:\samaccountname.csv -NoTypeInformation
```
2. Filter the user that you want to disable and add to csv file

3. Go to script directory or location and run the powershell file to disable the account
```
.\disable-the-users-samaccount.ps1
```
Note: E is the drive letter that your **csv** file exist.
##### maintainer: yannainglin
