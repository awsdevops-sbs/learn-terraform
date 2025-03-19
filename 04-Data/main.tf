terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
data "aws_security_groups" "selected" {

  name = "allow-all"

}

output "sec" {
  value = data.aws_security_groups.selected.id
}