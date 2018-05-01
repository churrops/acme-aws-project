variable "region"                 { default = "sa-east-1"}
variable "bucket_name"            { default = "acme-terraform-state-dev" }

/*Instance ans autoscaling settings*/
variable "tag_name"               { default = "ec2-acme-stg" }
/*Tamanho da instancia que será utilizado*/
variable "instance_type"          { default = "t2.micro" }
/*Porta que será usada pela aplicação. É usada para criação das regras de security group*/
variable "app_listen_port"        { default = "80" }
/*Tamanho do disco da instancia provisionada, porta padrão 8GB*/
variable "root_volume_size"       { default = 8 }

/*Autoscaling size*/
variable "asg_min_size"           { default = 2 }
variable "asg_max_size"           { default = 3 }
variable "asg_des_size"           { default = 2 }

/*ALB Settings*/
/*Porta utilizada pelo ALB. variável usada para definição das regras de security group*/
variable "alb_listen_port"        { default = 80 }
/*ALB Healthcheck configuration*/
variable "hc_interval"            { default = "15" }
variable "hc_path"                { default = "/" }
variable "hc_port"                { default = "traffic-port" }
variable "hc_protocol"            { default = "HTTP" }
variable "hc_timeout"             { default = "3" }
variable "hc_unhealthy_threshold" { default = "2" }
variable "hc_matcher"             { default = "200" }
