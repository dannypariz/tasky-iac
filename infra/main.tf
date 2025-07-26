terraform {
  backend "remote" {
    hostname     = "solengeu.jfrog.io"
    organization = "tasky-iac"
    workspaces {
      prefix = "wiz-"
    }
  }
}

resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "echo 'This is just a test run.'"
  }
}
