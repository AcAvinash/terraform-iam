resource "aws_iam_user" "user-avinash799" {
  name = "avinash"
  tags = {
    Description = "IAM User with Admin Access"
  }

}

resource "aws_iam_policy" "userAdminPolicy" {
  name   = "AdminUser"
  policy = file("policies.json")
}

resource "aws_iam_user_policy_attachment" "raghu_admin_access" {
  user       = aws_iam_user.user-avinash799.name
  policy_arn = aws_iam_policy.userAdminPolicy.arn
}