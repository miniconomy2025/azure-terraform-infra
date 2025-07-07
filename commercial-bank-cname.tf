resource "azurerm_dns_cname_record" "commercial_bank_frontend" {
  name                = "commercial-bank"
  record              = "ec2-13-247-182-160.af-south-1.compute.amazonaws.com"
  
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "commercial_bank_api" {
  name                = "commercial-bank-api"
  record              = "ec2-13-247-181-151.af-south-1.compute.amazonaws.com"
  
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}
