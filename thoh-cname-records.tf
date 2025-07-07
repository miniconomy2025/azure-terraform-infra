resource "azurerm_dns_cname_record" "thoh_frontend" {
  name                = "thoh"
  record              = ""

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "thoh_api" {
  name                = "thoh-api"
  record              = ""

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}