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