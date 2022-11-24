terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
  provider "aws" {
    # Configuration options 
    region = "us-east-1"
  }


  #VPC
data "aws_vpc" "def_vpc" {
  default = true
}

data "aws_subnets" "all_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.def_vpc.id]
  }
}

data "aws_ami" "amazon-linux-2" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "wayneinstace" {
  ami = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"
  key_name      = "key1"
  security_groups = ["wayne_docker_secgr"]
  user_data = filebase64("userdata.sh")
  tags = {
    "Name" = "wayne bookstore app"
  }
}

  #Sec Group
resource "aws_security_group" "wayne_docker_secgr" {
  name        = "wayne_docker_secgr"
  description = "SecGr for docker http-SSH"
  tags = {
  Name = "wayne_docker_secgr"
    }

    ingress {
      from_port   = 80
      protocol    = "tcp"
      to_port     = 80
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port   = 22
      protocol    = "tcp"
      to_port     = 22
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port   = 0
      protocol    = -1
      to_port     = 0
      cidr_blocks = ["0.0.0.0/0"]
    }
}

output "waynec2-public-ip" {
  value = aws_instance.wayneinstace.public_ip
}

