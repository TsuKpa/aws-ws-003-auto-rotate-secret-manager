output "s3_bucket_arn" {
    value = aws_s3_bucket.s3-static-website.arn
    description = "bucket arn"
}

output "s3_bucket_id" {
    value = aws_s3_bucket.s3-static-website.id
    description = "bucket id"
}

output "s3_bucket_domain_name" {
    value = aws_s3_bucket.s3-static-website.bucket_domain_name
    description = "bucket id"
}
