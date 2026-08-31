# S3 Bucket - Access Policies

## _#week_three - Access policies & CLI commands_
<br>

**_duration: 1 week_**<br><br>

ForgTech company wanna test your ability to type down a clean code by deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Developer team intends to use object storage as centralized storage; these Data consist of web application log files. The
developers will push the log files automatically to S3 from multiple places using IAM credentials.

Therefore, You’re requested to provision an S3 object storage and a directory called “logs,“ ensuring the bucket owner owns all the objects,
Block public access, enable versioning, disable object lock, as well as provision an IAM user with the least-privilege permissions as below:

1. Taha IAM user:
    - Hold an IAM Role consisting of an s3:GetObject policy for the logs directory only.
2. Mostafa IAM user:
    - Hold an S3 Policy allowing to put objects _(i.e._ s3:PutObject) at the entire S3.

After provisioning the required Resources, check the user's accessibility utilizing AWS CLI _e.g., aws s3 command and AWS CLI s3api
command._

The FrogTech security team has some concerns about this implementation as well, including enabling object encryption as “SSE-S3” and
enabling the Bucket key.

<br>
<br>

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Store the state file backend in S3.
3. Resources must have a common tag combination as below:
    - Common tags:
        - Key: “Environment”, Value: “terraformChamps”
        - Key: “Owner”, Value: <“Your_first_name“>

**Bouns**

1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e., this will assist you to get back and refresh_
    _your knowledge later_
<br>

## References:

- [How to use IAM Role in Terminal](https://eraki.hashnode.dev/aws-s3bucket-mft-terraform-project-06#heading-check-taha-user-permissions)
- [Week Three workshop code samples](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/09-S3BucketPolicy03)  ( Invalid Link )
- [AWS DOCS - S3 policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
- [AWS DOCS - S3 Commands reference](https://docs.aws.amazon.com/cli/latest/reference/s3/)
- [AWS DOCS - S3api commands reference](https://docs.aws.amazon.com/cli/latest/reference/s3api/)
