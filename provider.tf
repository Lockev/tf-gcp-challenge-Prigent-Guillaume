provider "google" {
    credentials = "${file("credentials.json")}"

    version = "4.63.1"
    project = var.project
    region  = var.region
    zone    = var.zone
}