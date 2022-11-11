terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.8.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "this" {
  name        = var.name
  description = var.description

  visibility = var.visibility

  #  template {
  #    owner                = "github"
  #    repository           = "terraform-module-template"
  #    include_all_branches = true
  #  }
}

