data "aws_ami" "my_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ami_acme_*"]
  }
}

