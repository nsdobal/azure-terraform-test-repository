terraform {
	required_providers {
		 azurerm = {
			source = "hashicorp/azurerm"
		}
	}
}

provider "azurerm" {
	features {}
}

resource "azurerm_resoruce_group" "rg" {
	for_each = {
		rg1 = "centralindia"
		rg2 = "eastus"
	}

	name = each.key
	location = each.value
}