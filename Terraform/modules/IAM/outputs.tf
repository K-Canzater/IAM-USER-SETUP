output "iam_group_name" {
  description = "The name of the IAM group"
  value       = aws_iam_group.iam_group.name
}

output "iam_user_name" {
  description = "The name of the IAM user"
  value       = aws_iam_user.iam_user.name
}

output "attached_policy_arn" {
  description = "The ARN of the attached policy"
  value       = aws_iam_group_policy_attachment.iam_group_policy.policy_arn
}
