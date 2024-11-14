variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "name" {
  type        = string
  description = "Prefix name for the Log Analytics workspace"
}

variable "retention_in_days" {
  type        = number
  description = "Retention period for logs in days"
  default     = 30  # Set to a reasonable retention period to control costs
}
