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
        names           = list(string)
        address_space   = list(string)
    })
    default = {
        names           = [ "tf-network" ]
        address_space   = [ "10.10.0.0/16" ]
    }
}

variable "subnets_info" {
    type = object({
        names           = list(string)
    }) 
}