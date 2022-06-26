provider "google" {
  project     = "chrome-energy-349619"
  region      = "europe-central2"
  zone        = "europe-central2-a"
}
 
terraform {
  backend "gcs" {
    bucket  = "bucket4tf"
    prefix  = "bucket4tf/terraform.tfstate"
  }
}