resource "random_id" "prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "storage-bucket-backend" {
  name          = "${var.bucket_name}-backend"
  location      = var.gcp_region
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-bucket-cloud-function" {
  name          = "${var.bucket_name}-${random_id.prefix.hex}"
  location      = var.gcp_region
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-bucket-archive" {
  name          = "${var.bucket_name}-cloud-function-archive"
  location      = var.gcp_region
  force_destroy = true
  uniform_bucket_level_access = true
}