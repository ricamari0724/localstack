terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "web-server" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  count = 5
  tags = {
    Name = "web-server-${count.index}"
  }
}