# AWS Boto3 - S3 Calls

## _#week_eighten - Boto3 SDK_
<br>

**_duration: 1 week_**<br><br>

ForgTech company wanna test your ability to deliver their requirements utilizing Python, This will help you build a good reputation.

The purpose of this task is to prove your capabilities using Boto3 calls, as well as prove that you have a strong knowledge in this regard.

The FrogTech Cloud Team requests you to implement a local Python script with AWS Boto3 SDK that meets the following requirements:

1. List the `us-east-1` region Buckets using the resource call.
2. Upload and download a dummy file to a random bucket by resource call.
3. Directly after the above steps, use the waiter call `ObjectExists` with 10 Sec Delay and 10 Attempts.
4. Then, use the Paginator call “List_objects_v2“ to list the bucket objects.

As well as build a personal document consisting of what did you learn with deep details and resources i.e. this will assist you in getting
back and refreshing your knowledge later.

**Bouns**

1. Separating actions into multiple functions and using the main file to call/handle their dependencies.
<br>

## References:

- [ListObjectsV2 - Boto3 1.38.1 documentation](https://docs.aws.amazon.com/boto3/latest/reference/services/s3/paginator/ListObjectsV2.html)
- [ObjectExists - Boto3 1.38.1 documentation](https://docs.aws.amazon.com/boto3/latest/reference/services/s3/waiter/ObjectExists.html)
- [buckets - Boto3 1.38.1 documentation](https://docs.aws.amazon.com/boto3/latest/reference/services/s3/service-resource/buckets.html)
- [S3 - Boto3 1.38.1 documentation](https://docs.aws.amazon.com/boto3/latest/reference/services/s3.html#resources)
