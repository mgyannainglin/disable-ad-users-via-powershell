Import-Module ActiveDirectory
Import-Csv "d:\users.csv" | ForEach-Object {
 $samAccountName = $_."samAccountName" 
Get-ADUser -Identity $samAccountName | Disable-ADAccount
}