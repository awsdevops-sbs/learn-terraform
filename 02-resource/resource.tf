terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_spot_instance_request" "Frontend_terrform" {
  ami                  = "ami-09c813fb71547fc4f"
  instance_type        = "t3.micro"
  spot_price           = "0.02"
  spot_type = "persistent"  # This replaces the 'persistent' argument
  instance_interruption_behavior = "stop"  # Stops instead of terminating

  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

  tags = {
    Name = "Frontend_Terraform"
  }
}

