terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "application/application.tfstate"
    region  = "sa-east-1"
  }
}
