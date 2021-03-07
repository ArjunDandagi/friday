variable "region" {
  default = "us-east-1"
  type = string
  description = "The Region to create the s3 bucket in"
}

variable "need_versioning" {
  default     = false
  type        = bool
  description = "whether versioning needs to be enabled"
}

variable "bucket_name" {
  type        = string
  description = "Name of the bucket :  example-crazy-berlin-weather"

}

variable "frequency_of_objects" {
  type        = string
  description = "Frequency of the objects put into this bucket, can be one of hourly,daily,weekly"
}

variable "acl" {
  type        = string
  default     = "private"
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private"
}

variable "server_side_encryption_configuration" {
  description = "Map containing server-side encryption configuration. visit https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attributes-reference for details"
  type        = any
  default     = {}
}

variable "lifecycle_rule" {
  description = "List of maps containing configuration of object lifecycle management."
  type        = any
  default     = []
}

variable "policy" {
  type = any
  description = "the map containing policy object for s3 bucket"
  default = null
}