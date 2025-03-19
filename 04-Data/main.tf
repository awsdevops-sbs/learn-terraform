terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
data "aws_security_group" "local" {

  name = "Allow-all-from-public"

}

output "sec" {
  value = data.aws_security_group.local.id
}


data "aws_instance" "test" {

  name = "frontend"
}

output "check" {
  value = [ data.aws_instance.test.name ,
            data.aws_instance.test.private_ip,
            data.aws_instance.test.private_dns
          ]
}
