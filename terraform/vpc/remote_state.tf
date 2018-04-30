terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "vpc/vpc.tfstate"
    region  = "sa-east-1"
  }
}
