locals {
  common_tags = {
    project     = "grads-${var.resource_group_name}"
    owneremail  = "atcteam@bbd.co.za"
    owner       = "ATCTeam (Rudolph Esterhuysen)"
  }
}