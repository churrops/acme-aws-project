# Projeto ACME - EM DESENVOLVIMENTO

## Pré-requisitos

* GIT
* AWS CLI
* Docker - <pre>curl -fsSl https://get.docker.com | sh</pre>
* Credenciais IAM com privilégios de admin
* Terraform - https://www.packer.io/downloads.html
* Packer - https://www.terraform.io/downloads.html

## Instalando AWS CLI e exportando as variáveis para trabalhar com Terraform

<pre>pip install awscli --upgrade
aws configure --profile acme
  AWS Access Key ID [None]: XXXXXXXXXXXXXX
  AWS Secret Access Key [None]: XXXXXXXXXXXXXXXXXXXXX
  Default region name [None]: sa-east-1
</pre>

<pre>
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile acme)

export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile acme)

export AWS_DEFAULT_REGION=sa-east-1
</pre>

## Executando o projeto

#### Clonando o repositório

<pre>git clone https://github.com/churrops/acme-aws-project.git</pre>

#### Criando o bucket s3 para armazenar o state file

<pre>
cd acme-aws-project/terraform/s3
terraform init
terraform plan
terraform apply
</pre>

#### Criando a VPC e seus recursos

<pre>
cd ../vpc
terraform init
terraform plan
terraform apply
</pre>

