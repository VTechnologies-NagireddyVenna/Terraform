provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "server" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  subnet_id  = "subnet-09e87c8a621969ffe"
  security_groups = ["sg-0bd5bc9cff7cb87c0"]

  tags = {
    Name = "Terraform"
  }
}
