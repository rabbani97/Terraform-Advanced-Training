variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "aab300ef-5c07-4cc8-a9df-951c157bb99d"

}

variable "client_id" {
  description = "Azure Client ID"
  type        = string
  default     = "0a28eb69-0ec3-4155-8484-ece820ce95d4"

}

variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "rgcreation"

}

variable "location" {
  description = "Azure Location"
  type        = string
  default     = "eastus"

}

variable "storage_account_name_1" {
  description = "Azure Storage Account Name"
  type        = string
  default     = "rgcreationstorage1"

}

variable "storage_account_name_2" {
  description = "Azure Storage Account Name"
  type        = string
  default     = "rgcreationstorage2"

}