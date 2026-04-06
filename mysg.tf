resource "aws_security_group" "test" {
  name = "hcp-sg"
}

output "sg_id" {
  value = aws_security_group.test.id
}

data "terraform_remote_state" "foo" {
  backend = "remote"

  config = {
    organization = "vmanral-org-1"

    workspaces = {
      name = "cli-driven-workflow"
    }
  }
}

output "sg_info" {
  value = data.terraform_remote_state.foo.outputs
}
