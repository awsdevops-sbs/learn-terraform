data "aws_security_group" "local" {

  name = "Allow-all-from-public"

}

output "sec" {
  value = data.aws_security_group.local.id
}