# Frontend CNAME
resource "azurerm_dns_cname_record" "recycler_frontend_cname" {
  name                = "recycler"
  record              = "d89q87v8vzcee.cloudfront.net"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

# API CNAME  
resource "azurerm_dns_cname_record" "recycler_api_cname" {
  name                = "recycler-api"
  record              = "ec2-13-245-149-83.af-south-1.compute.amazonaws.com"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

# API CERTIFICATE CNAME  
resource "azurerm_dns_cname_record" "recycler_api_cert_cname" {
  name                = "_c632bb0026e1904a38bb2b6b23a30c67.recycler-api"
  record              = "_cd3ae8ce2ca01426f074bee8fa93f351.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 600
  tags                = local.common_tags
}

# FRONTEND CERTIFICATE CNAME  
resource "azurerm_dns_cname_record" "recycler_frontend_cert_cname" {
  name                = "_3c884590419f2728da7732004980b7cb.recycler"
  record              = "_cb20d1c6d0fc8b5607a1def354723a76.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 600
  tags                = local.common_tags
}
