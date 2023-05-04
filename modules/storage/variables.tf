variable "bucket_name" {
    type = string
    default = "tf-gcp-challenge-pg-bucket"
}

variable "gcp_region" {
    type = string
    default = "europe-west1"
}

variable "project" {
    type = string
    default = "tf-gcp-challenge-prigent-g"
}

variable "gcp_zone" {
    type = string
    default = "europe-west1-c"
}

variable "storage_class" {
    type = string
    default = "STANDARD"
}