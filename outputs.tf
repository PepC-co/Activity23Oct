output "resource-group-name" {
    value = azurerm_resource_group.tf_rg.name
}

output "region" {
    value = azurerm_resource_group.tf_rg.location  
}

output "vnet-id" {
    value = azurerm_virtual_network.tf_vnet.id
}

output "vnet-name" {
    value = azurerm_virtual_network.tf_vnet.name
}

output "subnet-count" {
    value = length(azurerm_subnet.tf_subnets)
}