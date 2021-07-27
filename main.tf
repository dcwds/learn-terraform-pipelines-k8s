terraform {
  backend "remote" {
    organization = "dcwds"
    workspaces {
      name = "tf-pipelines-k8s"
    }
  }
required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
}

required_version = "~>1.0.3"
}



provider "google" {
  project = var.google_project
  region  = var.region
}
