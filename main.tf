terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  version = "4.63.1"
  project = var.project
  region  = var.project
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}