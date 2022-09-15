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

  subscription_id = "ff9def2a-54b2-4ab1-ae49-d96539f8fd57"
  client_id       = "4a543087-2b24-45ff-b3b1-8657e0fca260"
  client_secret   =  "gc-8Q~1xAQXZQIEfOtz4F-e-I2F-TTJ0iw3NKbL-"
  tenant_id       = "530c48cf-744a-4225-9c0f-c349cf5e9c65"
}

Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false   
}

