terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

module "service-bus-module" {
  source = "git::https://github.com/mleisa/assignment.git"
  namespace_name = "namespace-cc"
  queue_name_and_dlq = {
    queue6 = {
      queue_name             = "queue6"
      dead_lettering_enabled = false
    }
  }
  action_group_name = "team3"
  action_group_short_name = "p3-action"
  alert_rule = {}
}
