terraform {
  backend "s3" {
    bucket  = "acme-terraform-state-dev"
    encrypt = "true"
    key     = "jenkins/jenkins.tfstate"
    region  = "sa-east-1"
  }
}
