terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"        # the state RG
    storage_account_name = "sttfstateavn21803" # the $SA name you noted
    container_name       = "tfstate"
    key                  = "devops-lab.tfstate" # file name inside the container
  }
}

provider "azurerm" {
  features {}
  subscription_id = "979b8a44-c913-4334-8c95-623279174f9e" # get it with: az account show --query id -o tsv
}