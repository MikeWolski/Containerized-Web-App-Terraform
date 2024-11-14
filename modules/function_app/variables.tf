variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "storage_account_tier" {
  type        = string
  description = "The performance tier of the storage account"
  default     = "Standard"
}

variable "runtime" {
  type        = string
  description = "The runtime for the Function App, e.g., 'node' for Node.js or 'python' for Python"
  default     = "node"  # Set your default runtime, change as needed
}

variable "name" {
  type        = string
  description = "Function app name"
  default     = "mwproject3"
}