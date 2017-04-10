provider "aws" {
  region  = "us-east-1"
}

# we need a service account user
resource "aws_iam_user" "user" {
  name = "srv_rekognition_poc"
}

# generate keys for service account user
resource "aws_iam_access_key" "user_keys" {
  user = "${aws_iam_user.user.name}"
}

# add a user policy that grants service account user access 
resource "aws_iam_user_policy" "policy" {
  user = "${aws_iam_user.user.name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "rekognition:CompareFaces",
        "rekognition:DetectFaces",
        "rekognition:DetectLabels",
        "rekognition:ListCollections",
        "rekognition:ListFaces",
        "rekognition:SearchFaces",
        "rekognition:SearchFacesByImage"
    ],
    "Resource": "*"
    }
  ]
}
EOF
}
