terraform {
  required_version = ">= 0.12.20"
}

provider "aws" {
  version = ">= 2.63.0"
}

module "network" {
  source   = "./modules/aws/network"
  vpc_cidr = var.vpc_cidr
}