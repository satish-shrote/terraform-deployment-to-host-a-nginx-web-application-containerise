variable.tf

variable "subscription_id" {
   description = "Azure subscription"
   default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_id" {
   description = "Azure Client ID"
   default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_secret" {
   description = "Azure Client Secret"
   default = "XXXXXXXXXXXXXXXXXX"
}

variable "tenant_id" {
   description = "Azure Tenant ID"
   default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_F2"
}

variable "location" {
   type = string
   description = "Region"
   default = "West US"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "dev"
}

variable "instance_size" {
   type = string
   description = "Standard_F2"
}