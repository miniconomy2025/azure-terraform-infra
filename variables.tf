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
