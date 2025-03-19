data "aws_security_group" "selected" {

  name = "allow-all"

}

output "sec" {
  value = data.aws_security_group.selected
}