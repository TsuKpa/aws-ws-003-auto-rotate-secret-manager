###############################
# Github token
###############################
variable "github_token" {
  type        = string
  description = "Github token for create repository"
  sensitive   = true
}

variable "github_owner" {
  type        = string
  description = "Github owner"
  sensitive   = true
}

variable "github_repo_name" {
  type        = string
  description = "Github repository name"
}

variable "github_repo_description" {
  type        = string
  description = "Github repository description"
}

###############################
# AWS Region
###############################
variable "region" {
  type        = string
  description = "Region"
  default     = "ap-southeast-1"
}

variable "aws_profile_name" {
  type        = string
  description = "AWS profile for using credentials"
  default     = "default"
}

###############################
# S3
###############################

variable "bucket_name" {
  type    = string
  default = "my-nextjs-bucket-name-workshop-001"
}

###############################
# IAM
###############################

variable "iam_role_name" {
  type        = string
  description = "IAM Role Name"
  default     = "GithubActionS3CFRole"
}
