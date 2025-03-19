data "aws_security_group" "selected" {

  name = "Allow-all-from-public"

}

output "sec" {
  value = data.aws_security_group.selected
}