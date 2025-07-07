resource "azurerm_dns_cname_record" "electronics_supplier_frontend" {
  name                = "electronics-supplier"
  record              = "ec2-13-246-212-252.af-south-1.compute.amazonaws.com"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "electronics_supplier_api" {
  name                = "electronics-supplier-api"
  record              = "ec2-13-244-241-91.af-south-1.compute.amazonaws.com"

  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "electronics_supplier_ssl_validation_frontend" {
  name                = "_7cc62e64057e73853baa72c73b1296f0.electronics-supplier.projects.bbdgrad.com."
  record              = "_67adb6241bb12b613437383df4012994.xlfgrmvvlj.acm-validations.aws."
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}

resource "azurerm_dns_cname_record" "electronics_supplier_ssl_validation_api" {
  name                = "_ddc4718574de6d44eea27a744db40f7d.electronics-supplier-api.projects.bbdgrad.com."
  record              = "_317110ee4f532eef6ed8dd0294f4b10a.xlfgrmvvlj.acm-validations.aws."
   
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 300
  tags                = local.common_tags
}