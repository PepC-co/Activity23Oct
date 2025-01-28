resourcegroup_info = {
  name          = "ntier_rg"
  location      = "Central India"
}

vnet_info = {
  name          = "tf-network"
  address_space = [ "10.0.0.0/16" ]
}

subnets_info = {
  names         = [ "web", "app", "data" ]
}