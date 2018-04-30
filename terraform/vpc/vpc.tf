provider "aws" {
  region = "sa-east-1"
}

module "vpc" {
  source = "../modules/terraform-aws-vpc"

  name = "acme-dev"

  cidr = "10.0.0.0/16"

  azs             = ["sa-east-1a", "sa-east-1c"]
  private_subnets = ["10.0.35.0/24", "10.0.36.0/24"]
  public_subnets  = ["10.0.135.0/24", "10.0.136.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    owner       	= "Rodrigo Floriano de Souza"
    company        	= "ACME"
    environment        	= "development"
    environment-short	= "dev"
    
  }
}
