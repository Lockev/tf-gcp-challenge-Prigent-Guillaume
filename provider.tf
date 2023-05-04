terraform {
#   backend "gcs" {
#     bucket  = "tf-gcp-challenge-prigent-g"
#     prefix  = "terraform/state"
#   }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
    credentials = "${file("credentials.json")}"

    version = "4.63.1"
    project = var.project
    region  = var.gcp_region
    zone    = var.gcp_zone
}