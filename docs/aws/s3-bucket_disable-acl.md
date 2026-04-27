# S3 Bucket - Disable ACL

## #day_two - Bucket owner enforced and Bucket policy

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of very simple resources. This will help you
to build a good reputation.
FrogTech is required to build an S3 Bucket with enabling versioning, Besides ensuring that only the Bucket owner has full access to objects
in order to assign other members access by setting the bucket ownership to “BucketOwnerEnforced.”

Create an IAM user called “Mohamed” and provide him access to upload files into /log directory at s3 Bucket via Bucket policy. Besides
ensuring that you can destroy the S3 _(i.e. using terraform destroy command)_ even if the bucket is not empty.

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Resources must have tags as below:
    a. Key: “Environment”, Value: “terraformChamps”
    b. Key: “Owner”, Value: <“Your_first_name“>
3. Preferd to use variables

## Code Sample:

- [Day Two sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/09-S3BucketPolicy03)
- [Day Two sample](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/16-S3BucketArchive/configureProvider.tf)


FrogTech company has the challenge of automating a manual process, They are using S3 as a public storage for external/internal parties
authenticating using IAM credentials.

There are two main S3 buckets 1. frogtech-us-external and 2. frogtech-us-internal, The Challenge lies in the manual actions that
operators do daily in order to move files from one S3 to another.


You’re requested to automate this process using Lambda function, utilizing the native SDK of AWS _(i.e. Python boto3 SDK,)_ FrogTech
engineers have no idea about lambda. Therefore you as an expert, should provide them with a document containing the **basics** of lambda,
besides explaining:

1. Function event.
2. Function context.
3. Function environment variables.
4. layers.
5. Differences between Synchronous and Asynchronous.

as well as provide a diagram explaining the entire process of the created resources; Use IaC Terraform to build all resources and consider
the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Resources must have tags as below:
    a. Key: “Environment”, Value: “terraformChamps”
    b. Key: “Owner”, Value: <“Your_first_name“>
3. Preferd to use variables.

## Refrences:

1. [What is AWS Lambda? - AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
2. [\[AWS\] Lambda - S3 Trigger + Terraform Project 10](https://mohamed-eleraky.hashnode.dev/aws-lambda-s3-trigger-terraform-project-10#heading-the-architecture-design-diagram)
3. [\[AWS\] Lambda Concepts Essentials](https://mohamed-eleraky.hashnode.dev/aws-lambda-concepts-essentials#heading-synchronous-invocation)
