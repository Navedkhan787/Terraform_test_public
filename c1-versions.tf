# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
  subscription_id = "2b0bc876-a197-45f4-a31b-70b8167b9e50"
  client_id       = "3660c1e1-2165-49e8-8457-98e2a2e277fa"
  client_secret   =  "AHf8Q~fULuMH52duCAGa-jLJl35ee4vNveMuDaIo"
  tenant_id       = "f55577d5-c08a-401f-9604-4bc6c5f28dc8"   
  
}

#Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false   
}

