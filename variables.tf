variable "location" {
  description = "Default azure region for all resources"
  type        = string
  default     = "South Africa North"
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "miniconomy-2025"
}

variable "keyvault_user_object_id" {
  description = "Azure object ID of the user allowed to access they keyvault"
  type        = string
  default     = "81498850-c272-4551-a733-faa5a6707d92"
} 