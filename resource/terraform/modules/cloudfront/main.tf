locals {
  base_tags = {
    Terraform   = true
    Environment = "dev"
    Author      = "tsukpa"
  }
}

################################################################################
# Create AWS Cloudfront distribution
################################################################################

resource "aws_cloudfront_distribution" "cf-dist" {
  enabled             = true
  default_root_object = "index.html"

  origin {
    domain_name              = var.s3_bucket_domain_name
    origin_id                = var.bucket_id
    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.cf-s3-oai.cloudfront_access_identity_path
    }
  }
  

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = var.bucket_id

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000
    compress               = true
    viewer_protocol_policy = "redirect-to-https"
  }

  # https://aws.amazon.com/vi/cloudfront/pricing/
  price_class = "PriceClass_200" // because singapore (ap-southeast-1) available on 200

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations        = []
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = merge(local.base_tags, {
    Name = "cloudfront"
  })
}

resource "aws_cloudfront_origin_access_identity" "cf-s3-oai" {
  comment = "Created from Terraform"
}

################################################################################
# Update S3 policy
################################################################################

data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${var.bucket_arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.cf-s3-oai.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "static_site_bucket_policy" {
  bucket = var.bucket_id
  policy = data.aws_iam_policy_document.s3_policy.json
}