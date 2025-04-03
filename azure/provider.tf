terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
        }
        azapi = {
            source = "Azure/azapi"
        }
    }
    required_version = ">= 1.5.6"
}

provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_if_contains_resources = false
        }
    }
    subscription_id = "86229d79-bcfc-48dd-a341-79b24ecf14d5"
}

provider "azapi" {
    subscription_id = "86229d79-bcfc-48dd-a341-79b24ecf14d5"
}

