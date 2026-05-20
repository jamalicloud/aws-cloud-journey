terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }

    backend "s3" {
        bucket         = "terraform-state-jamali"
        key            = "vpc/terraform.tfstate"
        region         = "eu-west-3"
        use_lockfile = true 
    }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
    subnet_public_cidr = var.subnet_public_cidr
    subnet_private_cidr = var.subnet_private_cidr
}