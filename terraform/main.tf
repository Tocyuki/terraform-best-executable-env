terraform {
  required_version = ">= 0.12.20"
}

provider "aws" {
  version = ">= 2.63.0"
  region  = "us-east-2"
}

module "network" {
  source   = "./modules/aws/network"
  vpc_cidr = "10.0.0.0/16"
}
