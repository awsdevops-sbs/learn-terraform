terraform {
  backend "S3" {

    bucket = "mybucket16297"
    key    = "test/mybucket"
    region = "us-east-1"
  }

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

resource "null_resource" "dummy1" {}

resource "null_resource" "dummy1" {}