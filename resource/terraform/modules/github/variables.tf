###############################
# Github variables
###############################

variable "github_token" {
  type        = string
  description = "Github token for create repository"
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

variable "secrets_list" {
  type = list(object({
    name  = string
    value = string
  }))
  description = "List secrets ARN, name for deploy to AWS"
}
