provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  version = "~> 2.0"
  profile = "iace"
}

terraform {
  backend "s3" {
    bucket = "terraform-iac-l"
    key    = "terraform-iac.tfstate"
    region = "us-east-1"
  }
}
