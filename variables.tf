variable "name" {
  type        = string
  description = "The name of the AWS S3 bucket."
}

variable "logging_bucket" {
  type        = string
  description = "The name of the bucket that will receive the log objects."
  default     = ""
}

variable "logging_prefix" {
  type        = string
  description = "The key prefix to use when logging.  Defaults to \"s3/[NAME]/\" if not specified."
  default     = ""
}

variable "kms_master_key_id" {
  type        = string
  description = "The default KMS used for server-side encryption."
  default     = ""
}

variable "notifications" {
  type = list(object({
    id            = string
    queue_arn     = string
    events        = list(string)
    filter_prefix = string
    filter_suffix = string
  }))
  description = "List of notifications to configure."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the AWS S3 bucket."
  default     = {}
}