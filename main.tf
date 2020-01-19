provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/home/lazarete/.aws/credentials"
  version = "~> 2.0"
  profile = "Infra"
}

terraform {
  backend "s3" {
    bucket = "terraform-iac-l"
    key    = "terraform-iac.tfstate"
    region = "us-east-1"
  }
}