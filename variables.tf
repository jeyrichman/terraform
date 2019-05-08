variable "aws_region" {
  description = "AWS region"
  default = "us-west-2"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default = "ami-01e24be29428c15b2"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "terraform_task_eugene"
}

variable "ami_key_pair_name" {}

variable "key_path" {
  description = "path for id_rsa private"
  default = "~/.ssh/"
}

variable "key_name" {
  description = "name for id_rsa private"
  default = "id_rsa"
}
