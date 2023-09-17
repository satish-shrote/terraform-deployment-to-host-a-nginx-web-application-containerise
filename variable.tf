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
