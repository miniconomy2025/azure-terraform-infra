resource "azurerm_key_vault" "keyvault" {
  name                        = "${var.resource_group_name}-vault"
  location                    = azurerm_resource_group.miniconomy_rg.location
  resource_group_name         = azurerm_resource_group.miniconomy_rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  tags = local.common_tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.keyvault_user_object_id

    certificate_permissions = [
      "Get",
      "List",
      "Create",
      "Update",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
    ]
    key_permissions = [
      "Get",
      "List",
      "Create",
      "Update",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "GetRotationPolicy",
      "SetRotationPolicy",
      "Rotate",
      "Encrypt",
      "Decrypt",
      "UnwrapKey",
      "WrapKey",
      "Verify",
      "Sign",
      "Purge",
      "Release",
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
    ]
    storage_permissions = [
      "Get",
      "List",
      "Set",
    ]
  }
}