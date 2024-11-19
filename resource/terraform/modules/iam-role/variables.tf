variable "iam_role_name" {
  type = string
  description = "iam role name"
}

variable "s3_bucket_arn" {
  type        = string
  description = "bucket arn"
}

variable "s3_bucket_id" {
  type        = string
  description = "bucket id"
}

variable "github_owner" {
  type        = string
  description = "github username"
}

variable "cloudfront_arn" {
  type        = string
  description = "cloudfront arn"
}
