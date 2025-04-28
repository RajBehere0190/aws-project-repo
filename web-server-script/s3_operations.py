import boto3

def list_buckets():
    s3 = boto3.client('s3')
    buckets = s3.list_buckets()
    print("S3 Buckets:")
    for bucket in buckets['Buckets']:
        print(f"- {bucket['Name']}")

def count_objects(bucket_name):
    s3 = boto3.resource('s3')
    bucket = s3.Bucket(bucket_name)
    objects = list(bucket.objects.all())
    print(f"\nTotal objects in '{bucket_name}': {len(objects)}")

if __name__ == "__main__":
    list_buckets()
    count_objects("my-static-website-2025")  # Replace with your actual bucket name
