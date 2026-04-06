resource "aws_security_group" "test" {
  name = "hcp-sg"
}

output "sg_id" {
  value = aws_security_group.test.id
}

output "sgp_name" {
  value = aws_security_group.test.name
}
