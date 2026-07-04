output "audit_logs_bucket_arn" {
  description = "ARN of the audit logs S3 bucket"
  value       = aws_s3_bucket.audit_logs.arn
}

output "audit_logs_bucket_name" {
  description = "Name of the audit logs S3 bucket"
  value       = aws_s3_bucket.audit_logs.id
}

output "kms_key_arn" {
  description = "ARN of the KMS key used for bucket encryption"
  value       = aws_kms_key.audit_logs.arn
}
