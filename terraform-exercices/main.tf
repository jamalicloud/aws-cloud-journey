terraform {
	required_providers { 
        aws = {
		source = "hashicorp/aws" 
		version = "~> 5.0" 
        }
	} 
	}
	 
provider "aws" {
region = "eu-west-3" 
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = "10.0.0.0/16"
  vpc_name            = "LabVPC"
  subnet_public_cidr  = "10.0.1.0/24"
  subnet_private_cidr = "10.0.2.0/24"
}

/*
module "ec2" {
  source        = "./modules/ec2"
  instance_name = "laroche-web-server"
  ami           = "ami-0093462204ddb0f15"
  instance_type = "t2.micro"
  vpc_id        = module.vpc.vpc_id          
  subnet_id     = module.vpc.subnet_public_id  
  key_name      = "Key-salah"
}
*/

/*
module "vpc-dev" {
  source = "./modules/vpc"

  vpc_cidr = "172.16.0.0/16"
  vpc_name = "laroche-dev"
    subnet_public_cidr = "172.16.1.0/24"
    subnet_private_cidr = "172.16.2.0/24"
}

module "vpc-staging" {
  source = "./modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "laroche-staging"
    subnet_public_cidr = "10.0.1.0/24"
    subnet_private_cidr = "10.0.2.0/24"
}

module "vpc-prod" {
    source = "./modules/vpc"   
    
    vpc_cidr = "192.168.0.0/16"
    vpc_name = "laroche-prod"
    subnet_public_cidr = "192.168.1.0/24"
    subnet_private_cidr = "192.168.2.0/24"
}
*/

module "rds" {
  source = "./modules/rds"

  db_identifier = "laroche-rds"
  instance_type = "db.t3.micro"
  allocated_storage = 20
  engine = "mysql"
  db_name = "laroche-db"
  username = "admin"
  password = var.db_password
  vpc_id = module.vpc.vpc_id
  subnet_private_id = module.vpc.subnet_private_id
}