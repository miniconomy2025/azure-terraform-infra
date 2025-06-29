# Shared resources that will be run on Azure

* DNS records - subdomains of projects.bbdgrad.com

## DNS

All teams have to have their URLs registered as subdomains of projects.bbdgrad.com .

Each team has to provide 2 subdomains, one for the API and one for the web-application.

For example, the retail bank would need to register 2 subdomains with CNAME records
    • Web: retail-bank.projects.bbdgrad.com to point to myfancywebapp.awscloudformation.wherever
    • API: retail-bank-api.projects.bbdgrad.com to point to myfancyapi.awsec2.whatever

This does mean that the web front end SHOULD not be served by the same mechanism as the API, though you could get around that if you need to.

You can make a PR for these changes in this repo.

Please let Rudolph / Katlego / Future know when there is a PR to check.

```tf
resource "azurerm_dns_cname_record" "myproject_cname" {
  name                = "your-subdomain"
  record              = "where-you-want.your-dns.pointed"
  
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}
```

You can also request any additional DNS records you may need to create TLS certificates.

Each team should create a dedicated tf file for their DNS requests, please.
