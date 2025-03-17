terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "Frontend_terrform" {

  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  spot_price = "0.01"
  instance_interruption_behavior = "stop"  # Stops instead of terminating
  persistent = true
  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]


  }
