resource "aws_iam_user" "Mostafa" {
    name = "Mostafa"
  
}
resource "aws_iam_user" "Taha" {
    name = "Taha"
  
}

# Create IAM Role for Taha
resource "aws_iam_role" "iam_role_get_s3_Taha" {
  name                 = "s3_get_object_from_logs"
  assume_role_policy   = jsonencode({

    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "1",
            "Effect": "Allow",
            "Action": "sts:AssumeRole",
            "Principal": {
                "AWS": "${aws_iam_user.Taha.arn}"
            }
        }
    ]
})
}

# Creaet policy s3 for Taha role from logs directory only
resource "aws_iam_role_policy" "GetObject_policy" {
  name = "GetObject_policy"
  role =  aws_iam_role.iam_role_get_s3_Taha.id
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
        ]
        Effect   = "Allow"
        Resource = "arn:aws:s3:::s3-1/logs/*"
      },
    ]
  })
}

 # Mostafa s3  put objects  policy
resource "aws_iam_policy" "Mostafa_s3_put_policy" {
  name   = "Mostafa_s3_put_policy"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
        "s3:PutObject",      
        ],
        Resource = "arn:aws:s3:::s3-1/*",
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "Mostafa_policy_attachment" {
  user       = aws_iam_user.Mostafa.name
  policy_arn = aws_iam_policy.Mostafa_s3_put_policy.arn
}
