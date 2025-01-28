resourcegroup_info = {
  name          = "ntier_rg"
  location      = "Central India"
}

vnet_info = {
  name          = [ "VNet1-tf", "VNet2-tf" ]
  address_space = [ "192.168.0.0/16", "10.0.0.0/16" ]
}

subnets_info = {
  names         = [ "web", "app", "cache", "db" ]
}