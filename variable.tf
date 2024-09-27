#creating a variable file for VPC
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

#creating a variable file for subnet1
variable "cidr_subnet1" {
  description = "The CIDR block for the subnet1"
  type        = string
  default     = "10.0.1.0/24"
}
#creating a variable file for subnet2
variable "cidr_subnet2" {
  description = "The CIDR block for the subnet2"
  type        = string
  default     = "10.0.2.0/24"
}
#creating a variable file for subnet3
variable "cidr_subnet3" {
  description = "The CIDR block for the subnet3"
  type        = string
  default     = "10.0.3.0/24"
}
#creating a variable file for subnet4
variable "cidr_subnet4" {
  description = "The CIDR block for the subnet4"
  type        = string
  default     = "10.0.4.0/24"
}
#creating a variable file for subnet5
variable "cidr_subnet5" {
  description = "The CIDR block for the subnet5"
  type        = string
  default     = "10.0.5.0/24"
}
#creating a variable file for subnet6
variable "cidr_subnet6" {
  description = "The CIDR block for the subnet6"
  type        = string
  default     = "10.0.6.0/24"
}

