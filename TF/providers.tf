terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "200bacf8-7a38-42a5-80ea-fc2ee6f29b46"
  tenant_id         = "7de47651-f343-438e-9229-422ac4300d17"
  client_id         = "737fa99b-e59a-48a3-a766-8dd0d00b60e8"
  client_secret     = "qgR8Q~5mhGY3Ry8WXzUufJTTHj.YE4R-jOmcAcQ4"
}

