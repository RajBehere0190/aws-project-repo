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
   
   (`ssh -i ~/.ssh/your-key.pem ec2-user@<PUBLIC_IP>`)

## Software Requirements

| Component | Installation Command               |
|-----------|------------------------------------|
| Python 3  | `sudo yum install python3 -y`      |
| boto3     | `pip3 install boto3 --user`        |




## Create script file:

(`nano s3_operations.py`)

![image](https://github.com/user-attachments/assets/e56ec3c9-6634-4c37-9d32-803b90e1e963)

## Execution & Validation

1. Running the script

   (`python3 s3_operations.py`)

2. Expected Output

   ![image](https://github.com/user-attachments/assets/3fc3a115-27ec-40d6-8952-9de92ecfb7fc)


   

