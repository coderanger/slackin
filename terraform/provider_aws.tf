provider "aws" {
  region = "${var.AWS_REGION}"
}

data "terraform_remote_state" "network" {
  backend = "remote"

  config {
    hostname     = "app.terraform.io"
    organization = "rrxtns"

    workspaces {
      name = "slackin-dev"
    }
  }
}
