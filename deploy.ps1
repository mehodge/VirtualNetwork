$TenantId = '01c91881-c8fb-47da-95c7-2325967b29a3'
$SubID = 'b9b42d2c-e112-483f-9ddb-4fc8452475a6'
$RG = 'Test-VNet-RG'
$Location = "North Europe"
$TemplateFile = "C:\Users\mneal\OneDrive\Git\VirtualNetwork\azuredeploy.json"
$TemplateParameterFile = "C:\Users\mneal\OneDrive\Git\VirtualNetwork\azuredeploy.parameters.json"

Connect-AzAccount -TenantId $TenantId -SubscriptionID $SubID

New-AzResourceGroup -Name $RG -Location $Location
New-AzResourceGroupDeployment `
    -ResourceGroupName $RG `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $TemplateParameterFile