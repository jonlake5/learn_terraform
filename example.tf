terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  tags = {
    Name = "Ubuntu"
  }
}
