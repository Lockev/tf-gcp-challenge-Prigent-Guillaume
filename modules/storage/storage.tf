resource "google_storage_bucket" "static" {
  name          = "BUCKET_NAME"
  location      = var.region
  storage_class = var.storage_class

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "default" {
  name         = "sample_file.txt"
  source       = "~/terraform/sample_file.txt"
  content_type = "text/plain"
  bucket       = google_storage_bucket.static.id
}