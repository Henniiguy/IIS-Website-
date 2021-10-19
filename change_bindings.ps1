<#Written by:- Henil Khunt on Tuesday October 19th.#>

(Get-IISSite -Name 'MyWebsite').Bindings <#MyWebsite is the name of website.eplace it with your websites name#>
Stop-IISSite -Name 'MyWebsite'
Remove-IISSiteBinding -Name 'MyWebsite' -BindingInformation "*:3737:" -Verbose <#Mywesite was bound to 3737 so change that port number.#>
New-IISSiteBinding -Name 'MyWebsite' -BindingInformation "*:8880:" <# Creates a new bind on port 8880#>
Start-IISSite -Name 'MyWebsite'