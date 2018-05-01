variable "region"   	{ default = "sa-east-1"}

variable "bucket_name"	{ default = "acme-terraform-state-dev" }

variable "jenkins_name" { default = "acme_jenkins" }

variable "instance_type" { default = "t2.micro" }

variable "key_name" 	{ default = "deploy@acme.com" }
