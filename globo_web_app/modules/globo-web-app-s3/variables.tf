# Bucket name
variable "bucket_name" {
  type = string
  description = "Name to be given to the S3 bucket"
}

# ELB service account ARN
variable "elb_svc_acct_arn" {
  type = string
  description = "ARN of the ELB service account to which this should be associated"
}

# Common tags
variable "common_tags" {
  type = map(string)
  description = "Map of common tags that should be applied to the S3 resources"
  default = {}
}
