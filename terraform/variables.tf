variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "azure-homelab-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "ACR name (globally unique, alphanumeric only)"
  type        = string
  default     = "gavinalanhomelab"
}

variable "container_group_name" {
  description = "ACI container group name"
  type        = string
  default     = "azure-homelab-container"
}

variable "dns_name_label" {
  description = "DNS name label (must be unique in region)"
  type        = string
  default     = "gavinalan-homelab"
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default = {
    project     = "azure-homelab"
    environment = "dev"
    owner       = "gavin-alan"
  }
}
