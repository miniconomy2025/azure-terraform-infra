data "azurerm_dns_zone" "grad_projects_dns_zone" {
  name                = "projects.bbdgrad.com"
  resource_group_name = "the-hive"
}