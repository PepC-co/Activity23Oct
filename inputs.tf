variable "resourcegroup_info" {
    type = object({
        name            = string
        location        = string
    })
    default = {
        name            = "from-tf"
        location        = "Central India"
    }
}

variable "vnet_info" {
    type = object({
        name            = string
        address_space   = list(string)
    })
    default = {
        name            = "network-tf"
        address_space   = [ "10.10.0.0/16" ]
    }
}

variable "subnets_info" {
    type = object({
        names           = list(string)
    }) 
}