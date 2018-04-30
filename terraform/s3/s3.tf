resource "aws_s3_bucket" "tf-state-bucket" {
  bucket = "acme-terraform-state-dev"
  acl = "private"
  force_destroy = true

  tags {
    Name 		= "acme-terraform-state-dev"
    company		= "ACME"
    environment 	= "development"
    environment-short 	= "dev"
  }
  lifecycle {
    create_before_destroy = true
  }
}
