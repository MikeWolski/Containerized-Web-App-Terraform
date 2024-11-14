variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "acr_sku" {
  type        = string
  description = "SKU for the ACR instance"
  default     = "Basic"
}

variable "name" {
  type        = string
  description = "ACR instance name"
  default     = "mwproject3"
}