terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "app_prd/app_prd.tfstate"
    region  = "sa-east-1"
  }
}
