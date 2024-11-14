variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "MWProject3RG"
}

variable "location" {
  description = "The Azure region where the resources should be created"
  type        = string
  default     = "East US"
}

variable "action_email" {
  type        = string
  description = "Email for receiving alerts"
  default     = "wolski17@gmail.com"
}
