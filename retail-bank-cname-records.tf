resource "azurerm_dns_cname_record" "retail_bank_frontend" {
  name                = "retail-bank"
  record              = "ec2-13-247-163-48.af-south-1.compute.amazonaws.com"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "retail_bank_api" {
  name                = "retail-bank-api"
  record              = "ec2-13-247-163-48.af-south-1.compute.amazonaws.com"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}
