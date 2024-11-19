output "cloudfront_url" {
  value = <<EOF
  Please wait for github action running at https://${module.repository.homepage_url}/actions/workflows/ \n
  then you can go our app URL at: https://${module.cloudfront.cloudfront_url}"
  EOF
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_domain_name
}

output "OIDC_role_name" {
  value = module.iam.iam_role_name
}
