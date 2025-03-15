resource "aws_iam_group" "iam_group" {
  name = var.iam_group_name
}

resource "aws_iam_user" "iam_user" {
  name = var.user_name
}

resource "aws_iam_group_policy_attachment" "iam_group_policy" {
  group      = aws_iam_group.iam_group.name
  policy_arn = var.policy_arn
}

resource "aws_iam_group_membership" "iam_group_membership" {
  name  = "${var.iam_group_name}-membership"
  group = aws_iam_group.iam_group.name
  users = [aws_iam_user.iam_user.name]
}
