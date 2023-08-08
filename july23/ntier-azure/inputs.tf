variable "resource_group_name" {
  type        = string
  default     = "ntier"
  description = "this is resource group name"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "this is location of resources"

}

variable "network_range" {
  type        = string
  default     = "10.10.0.0/16"
  description = "this is network range"
}

variable "subnet_names" {
  type        = list(string)
  default     = ["web", "app", "db"]
  description = "these are subnet names"
}

variable "web_nsg_config" {
  type = object({
    name = string
    rules = list(object({
      name                       = string
      protocol                   = string
      source_address_prefix      = string
      source_port_range          = string
      destination_port_range     = string
      direction                  = string
      priority                   = string
      access                     = string
      destination_address_prefix = string
    }))
  })
}

variable "app_nsg_config" {
  type = object({
    name = string
    rules = list(object({
      name                       = string
      protocol                   = string
      source_address_prefix      = string
      source_port_range          = string
      destination_port_range     = string
      direction                  = string
      priority                   = string
      access                     = string
      destination_address_prefix = string
    }))
  })
}

variable "db_info" {
  type = object({
    db_name        = string
    server_name    = string
    server_version = string
    user_name      = string
    password       = string
    sku_name       = string
    max_size_gb    = number
  })
}

