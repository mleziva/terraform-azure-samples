$RESOURCE_GROUP_NAME="tstate"
$STORAGE_ACCOUNT_NAME="tstate1811"
$CONTAINER_NAME="tstate"

az login --identity
# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key
$ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

#environment variables for using MSI with terraform
$Env:ARM_USE_MSI = "true"
$Env:ARM_SUBSCRIPTION_ID = "yourvalue"
$Env:ARM_TENANT_ID = "yourvalue"