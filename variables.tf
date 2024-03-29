variable "name" {
  description = "Name of the lambda"
  default     = "mssql-auto-restore"
  type        = string
}

variable "create" {
  description = "Whether to create the resources in this module"
  default     = true
  type        = bool
}

variable "vpc_id" {
  description = "VPC the lambda will run in"
  type = string
}

variable "subnet_ids" {
  description = "Subnets in which to place the lambda"
  type        = list(string)
}

variable "secret_name" {
  description = "Name of the AWS secret containing the database connection information"
  type = string
}

variable "region_name" {
  description = "Name of the AWS region where all services reside."
  type = string
  default = "us-east-2"
}

variable "tags" {
  description = "Tags to be added to all resources."
  type        = map(string)
}
