"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"Create Web App :"

$Global:WAName = "alexeiwa"
$Global:WALocation = $RGLocation
# Linux Windows
$Global:WAOSType = "Windows"
# Replace | with : when entering the runtime stack!!!
$Global:WARuntime = "aspnet:V4.8"
$Global:ASPName = "alexeiasp"


################################################################
"CREATE AN APP SERVICE PLAN :"

az appservice plan create `
    --resource-group $RGName `
    --name $ASPName `
    --sku F1
    # [--app-service-environment]
    # [--hyper-v]
    # [--is-linux]
    # [--location]
    # [--no-wait]
    # [--number-of-workers]
    # [--per-site-scaling]
    # [--sku {B1, B2, B3, D1, F1, FREE, I1, I1v2, I2, I2v2, I3, I3v2, P1V2, P1V3, P2V2, P2V3, P3V2, P3V3, PC2, PC3, PC4, S1, S2, S3, SHARED, WS1, WS2, WS3}]
    # [--tags]
    # [--zone-redundant]


################################################################
"CREATE A WEBAPP :"

az webapp create `
    --resource-group $RGName `
    --plan $ASPName `
    --name $WAName `
    --runtime $WARuntime 
    # [--assign-identity]
    # [--deployment-container-image-name]
    # [--deployment-local-git]
    # [--deployment-source-branch]
    # [--deployment-source-url]
    # [--docker-registry-server-password]
    # [--docker-registry-server-user]
    # [--https-only {false, true}]
    # [--multicontainer-config-file]
    # [--multicontainer-config-type {COMPOSE, KUBE}]
    # [--role]
    # [--runtime]
    # [--scope]
    # [--startup-file]
    # [--subnet]
    # [--tags]
    # [--vnet]


################################################################
"CREATE A WEBJOB :"

# az webapp webjob triggered run `
#     --resource-group $RGName `
#     --name $WAName `
#     --webjob-name MyWebjob


