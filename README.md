# Projeto ACME

## Pré-requisitos

* GIT
* AWS CLI
* Terraform - https://www.packer.io/downloads.html
* Packer - https://www.terraform.io/downloads.html

## Instalando AWS CLI

<pre>pip install awscli --upgrade
aws configure --profile acme
</pre>

## Clonando o repositório

<pre>git clone https://github.com/churrops/acme-aws-project.git</pre>

## Criando o bucket s3 para armazenar o state file

<pre>
cd acme-aws-project/terraform/s3
terraform init
terraform plan
terraform apply
</pre>

## Criando a VPC e seus recursos

<pre>
cd ../vpc
terraform init
terraform plan
terraform apply
</pre>

