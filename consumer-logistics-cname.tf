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

# SSL validation for frontend domain
resource "azurerm_dns_cname_record" "consumer_logistics_frontend_ssl_validation" {
  name                = "_0ef0f3ed0aa728ab7ec9fb530d89d739.consumer-logistics"
  record              = "_09cd175fea4e03beb73c88cb78690f53.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}

# SSL validation for API domain
resource "azurerm_dns_cname_record" "consumer_logistics_api_ssl_validation" {
  name                = "_c816030031594ea49abe242816bfc711.consumer-logistics-api"
  record              = "_c5eb79a1453f1a89f804d8e05efb969c.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}