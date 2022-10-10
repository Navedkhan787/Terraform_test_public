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
  
  subscription_id = "17655825-51b0-41c3-aac1-8856d5fa4226"
  client_id       = "c9a4a764-64be-4099-8929-e1a1f8d512c2"
  client_secret   =  "Pzq8Q~sAelvXjniXVXeWZksXBiRhsMLzxYHM0bDT"
  tenant_id       = "1c660b68-8c5f-4a39-a6cd-caa9ad322b88"    
}

#Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false   
}

