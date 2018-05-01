terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "app_stg/app_stg.tfstate"
    region  = "sa-east-1"
  }
}
