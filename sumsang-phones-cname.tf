resource "azurerm_dns_cname_record" "sumsangphonesweb_cname" { 
  name                = "sumsang-phones" 
  record              = "ec2-16-28-22-112.af-south-1.compute.amazonaws.com" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}

resource "azurerm_dns_cname_record" "sumsangphonesapi_cname" { 
  name                = "sumsang-phones-api" 
  record              = "ec2-13-244-196-99.af-south-1.compute.amazonaws.com" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}