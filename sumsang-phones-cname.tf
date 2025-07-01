resource "azurerm_dns_cname_record" "sumsangphonesweb_cname" { 
  name                = "sumsang-phones" 
  record              = "bbd-grad-project.co.za" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}

resource "azurerm_dns_cname_record" "sumsangphonesapi_cname" { 
  name                = "sumsang-phones-api" 
  record              = "bbd-grad-project-api.co.za" 

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name 
  resource_group_name = "the-hive" 
  ttl                 = 3600 
  tags                = local.common_tags 
}