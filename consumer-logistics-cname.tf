resource "azurerm_dns_cname_record" "consumer_logistics_frontend" {
  name                = "consumer-logistics"
  record              = "d17esox66eb4ad.cloudfront.net"
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "consumer_logistics_api" {
  name                = "consumer-logistics-api"
  record              = "f85q1igme7.execute-api.af-south-1.amazonaws.com"
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}