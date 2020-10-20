{
    "Version": "2012-10-17",
    "Id": "PolicyForCloudFrontPrivateContent",
    "Statement": [
        {
            
            "Effect": "Allow",
            "Principal": {
                "AWS": "${origin_access_identity}"
            },
            "Action": "s3:GetObject",
            "Resource": "${bucket_arn}/*"
        },
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "${origin_access_identity}"
            },
            "Action": "s3:ListBucket",
            "Resource": "${bucket_arn}"

        }
    ]
}
