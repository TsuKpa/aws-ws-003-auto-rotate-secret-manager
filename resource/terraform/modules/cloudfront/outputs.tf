output "cloudfront_arn" {
    value = aws_cloudfront_distribution.cf-dist.arn
}

output "cloudfront_url" {
    value = aws_cloudfront_distribution.cf-dist.domain_name
}

output "cloudfront_id" {
    value = aws_cloudfront_distribution.cf-dist.id
}
