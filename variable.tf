variable vpc_name {
    type = string
}

variable source_ranges {
    type = list(string)
}

variable subnets {
    type = list(object({
        name = string
        subnets = string
        ip_cidr_range = string 
    }))
}