variable "rg_name" {
  type        = string
  default     = "rg-avd-terraform-westeu-test-02"
  description = "Name of the Resource group in which to deploy these resources"
}

variable "deploy_location" {
  type        = string
  default = "westeurope"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "workspace" {
  type        = string
  description = "Name of the Azure Virtual Desktop workspace"
  default     = "ws-avd-terraform-test-01"
}

variable "hostpool" {
  type        = string
  description = "Name of the Azure Virtual Desktop host pool"
  default     = "hp-avd-terraform-test-01"
}

variable "ad_vnet" {
  type        = string
  default = "adVNET"
  description = "Name of domain controller vnet"
}

variable "dns_servers" {
  type        = list(string)
  default = [ "10.0.0.4" ]
  description = "Custom DNS configuration"
}

variable "vnet_range" {
  type        = list(string)
  default = [ "10.1.0.0/24" ]
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  default = [ "10.1.0.0/24" ]
  description = "Address range for session host subnet"
}

variable "ad_rg" {
  type        = string
  default = "rg-domain-controler-westeurope"
  description = "The resource group for AD VM"
}

variable "avd_users" {
  description = "AVD users"
  default     = ["AVD users"]
}

variable "aad_group_name" {
  type        = string
  description = "Azure Active Directory Group for AVD users"
  default     = "AVD users"
}

variable "rdsh_count" {
  description = "Number of AVD machines to deploy"
  default     = 2
}

variable "prefix" {
  type        = string
  default = "hp-avd-terraform-test"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "domain_name" {
  type        = string
  default = "AZUREVIRTUALDESKTOPDEMO.LOCAL"
  description = "Name of the domain to join"
}

variable "domain_user_upn" {
  type        = string
  default = "demouser"
  description = "Username for domain join (do not include domain name as this is appended)"
}

variable "domain_password" {
  type        = string
  default = "vm-password-@234#"
  description = "Password of the user to authenticate with the domain"
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the machine to deploy"
  default     = "Standard_DS2_v2"
}

variable "ou_path" {
  default = ""
}

variable "local_admin_username" {
  type        = string
  description = "local admin username"
  default = "demouser"
}

variable "local_admin_password" {
  description = "local admin password"
  sensitive   = true
  default = "vm-password-@234#"
}
