resource "google_compute_network" "i27-ecommerce-vpc" {
    name = var.vpc_name
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "i27-ecommerce-vpc-subnets" {
    network = google_compute_network.i27-ecommerce-vpc.id
    count = length(var.subnets)
    name = var.subnets[count.index].name
    region = var.subnets[count.index].subnets
    ip_cidr_range = var.subnets[count.index].ip_cidr_range
}

resource "google_compute_firewall" "i27-ecommerce-vpc-firewall" {
    network = google_compute_network.i27-ecommerce-vpc.id
    name = "open-ports-22-80-8080-9000"
    allow {
        protocol = "tcp"
        ports = ["22","80","8080","9000"]
    }
    source_ranges = var.source_ranges
}