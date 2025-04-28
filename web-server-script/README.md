# Python Script - AWS S3 Operations

This Python script lists all S3 buckets and counts objects inside a specified S3 bucket.

---

## Prerequisites

- Python 3.x installed
- Boto3 installed (`pip3 install boto3`)
- IAM Role attached to EC2 with S3 permissions

---

## How to Run

1. SSH into your EC2 instance.
   
   ssh -i ~/.ssh/your-key.pem ec2-user@<PUBLIC_IP>

## Software Requirements

| Component | Installation Command               |
|-----------|------------------------------------|
| Python 3  | `sudo yum install python3 -y`      |
| boto3     | `pip3 install boto3 --user`        |
| AWS CLI   | `sudo yum install awscli -y`       |


## Run the script:

python3 s3_operations.py

