# S3 Bucket - Disable ACL

## _#day_two - Bucket owner enforced and Bucket policy_
<br>

ForgTech company wanna test your ability to type clean code by deploying the structure of very simple resources. This will help you
to build a good reputation.

FrogTech is required to build an S3 Bucket with versioning enabled, while ensuring that only the Bucket owner has full access to objects
in order to assign other members access by setting the bucket ownership to “BucketOwnerEnforced.”

Create an IAM user called “Mohamed” and provide him access to upload files into the/log directory at s3 Bucket via a bucket policy. Besides
ensuring that you can destroy the S3 _(i.e., using the terraform destroy command)_ even if the bucket is not empty.

<br>
<br>

Use IaC Terraform to build all resources and consider the requirements specifications below.

1. Resources must be created in the us-east-1 region.
2. Resources must have tags as below:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
3. Prefer to use variables

FrogTech company has the challenge of automating a manual process. They are using S3 as public storage for external/internal parties
authenticating using IAM credentials.

There are two main S3 buckets 1. frogtech-us-external and 2. frogtech-us-internal, The Challenge lies in the manual actions that
operators do daily in order to move files from one S3 to another.

You’re requested to automate this process using a Lambda function, utilizing the native AWS SDK (i.e. Python boto3 SDK)_ FrogTech
engineers have no idea about Lambda. Therefore, you, as an expert, should provide them with a document containing the **basics** of Lambda,
besides explaining:

1. Function event.
2. Function context.
3. Function environment variables.
4. Layers.
5. Differences between Synchronous and Asynchronous.

As well as provide a diagram explaining the entire process of the created resources; Use IaC Terraform to build all resources and consider
the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Resources must have tags as below:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
3. Prefer to use variables.
<br>

## References:

1. [What is AWS Lambda? - AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
2. [\[AWS\] Lambda - S3 Trigger + Terraform Project 10](https://mohamed-eleraky.hashnode.dev/aws-lambda-s3-trigger-terraform-project-10#heading-the-architecture-design-diagram)   ( Invalid Link )
3. [\[AWS\] Lambda Concepts Essentials](https://mohamed-eleraky.hashnode.dev/aws-lambda-concepts-essentials#heading-synchronous-invocation)   ( Invalid Link )
