terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "autoscaling/autoscaling.tfstate"
    region  = "sa-east-1"
  }
}
