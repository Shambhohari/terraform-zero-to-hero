terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.17.0"
    }
  }
}

provider "google" {
  project                     = "tokyo-flames-415018"
  region                      = "us-central1"
  zone                        = "us-central-c"
  credentials                 = "keys.json"
  impersonate_service_account = "for-terraform@tokyo-flames-415018.iam.gserviceaccount.com"
}

resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network-custom"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "custome_subnets" {
  for_each      = var.subnet
  name          = each.key
  ip_cidr_range = each.value.cidr_block
  region        = each.value.region
  network       = google_compute_network.vpc_network.id
}

output "op-id" {
  value = google_compute_network.vpc_network.id
}

output "op_self_link" {
  value = google_compute_network.vpc_network.selflink
}
