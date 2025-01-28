resource "azurerm_resource_group" "tf_rg" {
    name                 = var.resourcegroup_info.name
    location             = var.resourcegroup_info.location
}

resource "azurerm_virtual_network" "tf_vnet" {
    name                 = var.vnet_info.name
    address_space        = var.vnet_info.address_space
    resource_group_name  = var.resourcegroup_info.name
    location             = var.resourcegroup_info.location
    
    depends_on           = [ azurerm_resource_group.tf_rg ]
}

resource "azurerm_subnet" "tf_subnets" {
    count                = length(var.subnets_info.names)
    name                 = var.subnets_info.names[count.index]
    address_prefixes     = [ cidrsubnet(var.vnet_info.address_space[0],8,count.index) ]
    resource_group_name  = var.resourcegroup_info.name
    virtual_network_name = var.vnet_info.name

    depends_on           = [ azurerm_virtual_network.tf_vnet ]
}