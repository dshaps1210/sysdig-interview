terraform {
  required_providers {
    sysdig = {
      source = "sysdiglabs/sysdig"
    }
  }
}

provider "sysdig" {
  sysdig_secure_url       = "https://app.us4.sysdig.com"
  sysdig_secure_api_token = "90177a65-d310-4a8b-80a5-5d1c00ddcfaa"
}

provider "google" {
  project = "sysdig-interview-402922"
  region  = "us-central1"
}

provider "google-beta" {
  project = "sysdig-interview-402922"
  region  = "us-central1"
}

module "single-project" {
  source = "sysdiglabs/secure-for-cloud/google//examples/single-project"
}