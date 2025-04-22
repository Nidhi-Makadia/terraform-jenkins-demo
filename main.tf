terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "demo_file" {
  filename = "${path.module}/hello_jenkins.txt"
  content  = "This file was created by Terraform via Jenkins!"
}
