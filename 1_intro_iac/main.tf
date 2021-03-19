provider "aws" {
  region = var.aws-region
}

resource "aws_instance" "tf_ec2" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

variable "aws-region" {
  type    = string
  default = "us-east-1"
}