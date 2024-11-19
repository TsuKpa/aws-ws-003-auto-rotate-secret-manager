module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "cloudfront" {
  source                = "./modules/cloudfront"
  bucket_arn            = module.s3.s3_bucket_arn
  bucket_id             = module.s3.s3_bucket_id
  s3_bucket_domain_name = module.s3.s3_bucket_domain_name
  depends_on            = [module.s3]
}

module "iam" {
  source         = "./modules/iam-role"
  cloudfront_arn = module.cloudfront.cloudfront_arn
  s3_bucket_id   = module.s3.s3_bucket_id
  s3_bucket_arn  = module.s3.s3_bucket_arn
  iam_role_name  = var.iam_role_name
  github_owner   = var.github_owner
  depends_on     = [module.cloudfront, module.s3]
}

data "aws_caller_identity" "current" {}

module "repository" {
  source                  = "./modules/github"
  github_token            = var.github_token
  github_repo_name        = var.github_repo_name
  github_repo_description = var.github_repo_description
  secrets_list = [
    {
      name  = "AWS_REGION"
      value = var.region
    },
    {
      name  = "AWS_ACCOUNT_ID"
      value = data.aws_caller_identity.current.account_id
    },
    {
      name  = "BUCKET_NAME"
      value = var.bucket_name
    },
    {
      name  = "AWS_S3_ASSUME_ROLE"
      value = module.iam.iam_role_name
    },
    {
      name  = "CF_DISTRIBUTION_ID"
      value = module.cloudfront.cloudfront_id
    }
  ]
  depends_on = [module.iam]
}
