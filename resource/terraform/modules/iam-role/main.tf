locals {
  base_tags = {
    Terraform   = true
    Environment = "dev"
    Author      = "tsukpa"
  }
}

################################################################################
# OpenId Connect
################################################################################

resource "aws_iam_openid_connect_provider" "github_action" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com",
  ]

    # i don't know what is this
  thumbprint_list = ["cf23df2207d99a74fbe169e3eba035e633b65d94"]

  tags = merge(local.base_tags, {
    Name = "oidc"
  })
}

# Use this data if you already exist github provider
# data "aws_iam_openid_connect_provider" "github_action" {
#   arn = "arn:aws:iam::419040915749:oidc-provider/token.actions.githubusercontent.com"
# }

data "aws_iam_policy_document" "oidc" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [data.aws_iam_openid_connect_provider.github_action.arn]
    }

    condition {
      test     = "ForAllValues:StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "ForAllValues:StringEquals"
      variable = "token.actions.githubusercontent.com:iss"
      values   = ["https://token.actions.githubusercontent.com"]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:${var.github_owner}/*"]
    }
  }
}

################################################################################
# IAM Role
################################################################################

resource "aws_iam_role" "iam_s3_cf_role" {
  name = var.iam_role_name

  assume_role_policy = data.aws_iam_policy_document.oidc.json

  inline_policy {
    name = "SyncToBucket"
    policy = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Sid" : "SyncToBucket",
          "Effect" : "Allow",
          "Action" : [
            "s3:PutObject",
            "s3:GetObject",
            "s3:ListBucket",
            "s3:DeleteObject"
          ],
          "Resource" : [
            var.s3_bucket_arn,
            "${var.s3_bucket_arn}/*"
          ]
        }
      ]
    })
  }

  inline_policy {
    name = "FlushCache"
    policy = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Sid" : "FlushCache",
          "Effect" : "Allow",
          "Action" : "cloudfront:CreateInvalidation",
          "Resource" : var.cloudfront_arn
        }
      ]
    })
  }
}
