resource "azurerm_dns_cname_record" "case_supplier_frontend" {
  name                = "case-supplier"
  record              = "d2hhphmbxli2xz.cloudfront.net"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

# API CNAME  
resource "azurerm_dns_cname_record" "case_supplier_api" {
  name                = "case-supplier-api"
  record              = "ec2-13-246-82-211.af-south-1.compute.amazonaws.com"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

# SSL validation for frontend domain
resource "azurerm_dns_cname_record" "case_supplier_ssl_validation_frontend" {
  name                = "_23d0ed02702a858864eb0827b5d4c6ca.case-supplier"
  record              = "_39149715957dec17af46873a1c200e72.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}

# SSL validation for API domain
resource "azurerm_dns_cname_record" "case_supplier_ssl_validation_api" {
  name                = "_1467b087cda671c754fd65b087fd32ba.case-supplier-api"
  record              = "_739f9fb540a0d86c2d4ff8f953c77674.xlfgrmvvlj.acm-validations.aws"
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}