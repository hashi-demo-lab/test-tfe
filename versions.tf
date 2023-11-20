terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.50.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }

  cloud {
    hostname     = "tfe.simon-lynch-2281.aws.sbx.hashicorpdemo.com"
    organization = "hvd"

    workspaces {
      name = "testing"
    }
  }


}
