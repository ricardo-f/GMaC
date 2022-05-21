terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sector-c"
    workspaces {
      name = "gmac-prod"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.pat
}
