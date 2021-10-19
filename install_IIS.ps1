Install-Module -Name 'IISAdministration'
New-Item -ItemType Directory -Name 'MyWebsite' -Path 'C:\' <# replace myWebsite with your directory name and give it a path. #>
New-Item -ItemType File -Name 'index.html' -Path 'C:\MyWebsite\' <# replace index.html with your file name #>
<#
<!DOCTYPE html>
<html>
    <head>
         <title>Website for OPS300 course.</title>
    </head>
    <body>
        <h1>This is a very basic site working on the specified port.</h1>
        <p>Thank you for reading!</p>
        <p>The administrator of this site is Henil Khunt and the Student id is 139090195.</p>
        <p>This page was created using the newer IISAdministration PowerShell module.</p>
        <p>Keep calm and learn PowerShell.</p>
    </body>
</html>
#>
New-IISSite -Name 'MyWebsite' -PhysicalPath 'C:\MyWebsite\' -BindingInformation "*:8088:" <#replace MyWebsite and the port number.#>
Get-IISSite <# shows the currently binded sites. #>