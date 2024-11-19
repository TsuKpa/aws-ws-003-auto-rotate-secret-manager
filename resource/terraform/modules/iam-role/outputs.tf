output "iam_role_name" {
    description = "IAM Role for github action"
    value = aws_iam_role.iam_s3_cf_role.name
}
