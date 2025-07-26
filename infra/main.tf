terraform {
  backend "remote" {
    hostname     = "solengeu.jfrog.io"
    organization = "tasky-iac"
    workspaces {
      prefix = "wiz-"
    }
  }
}
