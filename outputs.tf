output "resource_group_name" {
    value = azurerm_resource_group.miniconomy_rg.name
    description = "Name of the resource group"
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
  description = "The name of the storage account used for Terraform state."
}

output "state_container_name" {
  value = azurerm_storage_container.tfstate.name
  description = "The name of the container used for Terraform state."
}

output "dns_zone" {
  value = data.azurerm_dns_zone.grad_projects_dns_zone.name
}

output "dns_zones_name_servers" {
   value = data.azurerm_dns_zone.grad_projects_dns_zone.name_servers 
}

output "calendar_cname_fqdn" {
    value = azurerm_dns_cname_record.calendar_cname.fqdn
}