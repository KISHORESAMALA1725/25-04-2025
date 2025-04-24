vpc_name = "i27-ecommerce-vpc"

source_ranges = ["0.0.0.0/0"]

subnets = [
{
    name = "i27-ecommerce-vpc-us-central1-subnet"
    subnets = "us-central1"
    ip_cidr_range = "10.10.0.0/16"
},
{
    name = "i27-ecommerce-vpc-us-east4-subnet"
    subnets = "us-east4"
    ip_cidr_range = "10.50.0.0/6"
}]