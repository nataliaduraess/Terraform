###################### CONFIGURA O PROVIDER ###########################
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = "natalia-terraform-user.json"
  region      = "us-central1"
}