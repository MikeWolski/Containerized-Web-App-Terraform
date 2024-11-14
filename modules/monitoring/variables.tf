variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "aks_id" {
  type        = string
  description = "The ID of the AKS cluster"
}

variable "action_group_id" {
  type        = string
  description = "The ID of the action group for alerts"
}
