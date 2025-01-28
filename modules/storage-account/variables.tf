variable "storage_account_name" {
  description = "Azure Storage Account Name"
  type        = string
#   default     = "rgcreationstorage"
}

variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Location"
  type        = string  
}