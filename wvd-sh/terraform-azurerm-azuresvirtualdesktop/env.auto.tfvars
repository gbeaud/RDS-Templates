#This file contains ENVIRONMENT-SPECIFIC variables. In the variables.tf, we can specify static/generic values, while in this env.tfvars file, we will specify the concrete values for a specific deployment.

#The variables defined in this file OVERRIDE the ones in variables.tf

deploy_location = "west europe"
rg_name         = "rg-avd-terraform-westeu-test-01"

#Active Directory variables
ad_rg = "rg-domain-controler-westeurope"
ad_vnet = "adVNET"
dns_servers = [ "10.0.0.4" ]

#Network
vnet_range =  ["10.2.0.0/24"]
subnet_range = ["10.2.0.0/24"]

#Storage

#AVD artifacts
workspace = "ws-avd-terraform-test-01"
hostpool = "hp-avd-terraform-test-01"
prefix = "avd"

#Users
avd_users = [
  "demouser@M365x389859.onmicrosoft.com",
  "admin@M365x389859.onmicrosoft.com",
  "user2@M365x389859.onmicrosoft.com"
]