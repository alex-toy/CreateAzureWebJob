################################################################
"resource Group :"

#southcentralus centralus francecentral westus2 eastus centralus 
$Global:RGLocation = "centralus"
$Global:RGName = "migration-rg"


#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\WebApp\WebApp_create.ps1"








