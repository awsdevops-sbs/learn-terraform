resource "aws_instance" "instance_types" {
 for_each = var.instance_types
 ami = var.ami
 instance_type = each.value["instance_type"]
 vpc_security_group_ids = var.sec

  tags = {

    Name = each.key
  }
}

variable "ami" {

  default = "ami-09c813fb71547fc4f"
}

variable "sec" {

  default = ["sg-0262c4232ab2a8184"]
}

variable "instance_types" {

  default = {

    tfrontend = {

      instance_type = "t3.micro"
    }

    tbackend = {

      instance_type = "t3.large"
    }

    tmysql = {

      instance_type = "t3.small"
    }
  }
}

