## Create a storage account to create blob storage for the boot diag output*/
resource "azurerm_storage_account" "st_diag" {
   
    name                        = "${var.MD_STDIAG_PREFIX}${var.MD_PROJECT_NAME}${var.MD_SUBSCRIPTION_PREFIX}01" 
    resource_group_name         = var.MD_RG_NAME
    location                    = var.MD_LOCATION
    account_tier                = "Standard"
    account_replication_type    = "LRS"
    allow_nested_items_to_be_public  = false
    network_rules {
             #virtual_network_subnet_ids = [var.MD_SUBNET_ID]
             bypass = ["AzureServices"] #to be one of [AzureServices Logging Metrics None]
             default_action   = "Allow"
        }
    tags = var.MD_ALL_TAGS 
  }
}


output "MD_OUT_ST_NAME" {
  value     = azurerm_storage_account.st_diag.name
  }

output "MD_OUT_ST_URI" {
  value = azurerm_storage_account.st_diag.primary_blob_endpoint
}  

output "MD_OUT_ST_KEY" {
  value = azurerm_storage_account.st_diag.primary_access_key
}  

