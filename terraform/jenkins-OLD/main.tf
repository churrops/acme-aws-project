provider "aws" {
  region = "${var.region}"
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    region = "${var.region}"
    bucket = "${var.bucket_name}"
    key = "vpc/vpc.tfstate"
  }
}

data "template_file" "user_data" {
  template = "${file("templates/user_data.tpl")}"
}
