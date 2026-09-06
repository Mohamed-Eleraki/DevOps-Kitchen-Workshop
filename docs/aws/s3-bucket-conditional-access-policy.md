# S3 Bucket - Conditional Access Policy

## _#day_four - Manage user's access with conditions_
<br>

**_duration: 1 day_**<br><br>


ForgTech company wanna test your ability to type clean code by deploying the structure of resources. This will help you to build a
good reputation.

FrogTech intends to use an S3 Bucket as centralized storage between internal and external users, utilizing IAM policies and Roles. you’re
requested to deploy an S3 beside Three users: Ahmed as an internal user with an IAM policy of S3 Administrator access (AWS-managed)
Policy, Mahmoud as an external user with an IAM policy that allows him to get objects from the S3 bucket with a conditional restriction of his company public
IP-only, and Mostafa as an internal user, and his team delegated to fetch files, with an IAM Role holds the get-objects policy.

<br>
<br>

Use IaC Terraform to build all resources and consider the below requirements specifications. And ensure that you can destroy the S3 _(i.e.
using the terraform destroy command)_ even if the bucket is not empty.

1. Resources must be created in the us-east-1 region.
2. Resources must have tags as below:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
3. Prefer to use variables
4. Create & Share a document that explains what you learned.

## Code Sample:

- [Day four sample/Blog](https://mohamed-eleraky.hashnode.dev/aws-s3bucket-mft-terraform-project-06#heading-the-architecture-design-diagram)   ( Invalid Link )
- [Day four sample/Code i.e. iam creation, IP restriction, etc](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/09-S3BucketPolicy03/iam.tf)   ( Invalid Link )
- [Day four sample/Attache AWS Managed policy to IAM Role](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/14-lambda_run_SSM/iam.tf)  ( Invalid Link )
