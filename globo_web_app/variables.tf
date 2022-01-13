variable "aws_access_key" {
  type = string
  description = "AWS Access Key"
  sensitive = true
}

variable "aws_secret_key" {
  type = string
  description = "AWS Secret Key"
  sensitive = true
}

variable "aws_region" {
  type = string
  description = "AWS Region to use for resources"
  default = "us-east-1"
}

variable "company" {
  type = string
  description = "Company Name for resource tagging"
  default = "Globomantics"
}

variable "project" {
  type = string
  description = "Project Name for resource tagging"
}

variable "billing_code" {
  type = string
  description = "Billing Code for resource tagging"
}
