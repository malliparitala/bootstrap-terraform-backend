provider "aws" {
    region = var.region
}

resource "aws_s3_bucket" "terraform_state" {
    name = "terraform-state-bucket"
    acl = "private"

    versioning {
        enabled = true
    }

    tags = {
        Name = "Terraform State Bucket"
    }
}