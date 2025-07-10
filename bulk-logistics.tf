resource "azurerm_dns_cname_record" "bulk_logistics_web_cname" { 
  name                = "bulk-logistics" 
  record              = "ec2-3-210-114-177.compute-1.amazonaws.com" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}

resource "azurerm_dns_cname_record" "bulk_logistics_api_cname" { 
  name                = "bulk-logistics-api" 
  record              = "ec2-52-7-248-137.compute-1.amazonaws.com" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}