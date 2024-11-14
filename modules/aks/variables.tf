variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the AKS cluster"
  default     = 1
}

variable "node_vm_size" {
  type        = string
  description = "VM size for AKS nodes"
  default     = "Standard_B2s"
}

variable "name" {
  type        = string
  description = "AKS instance name"
  default     = "mwproject3"
}