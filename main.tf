terraform {
  required_version = ">= 1.3"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }

  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "null_resource" "dummy" {
  triggers = {}

  provisioner "local-exec" {
    command = "ls"
  }
}


