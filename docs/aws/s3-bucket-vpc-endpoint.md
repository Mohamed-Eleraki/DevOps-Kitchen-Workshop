# S3 Bucket | VPC Endpoint
## _#week_four - Accessing S3 via VPC Endpoint_
<br>

**_duration: 1 week_**<br><br>

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Developer team intends to use object storage as a centralized storage for storing data, these Data consist of web applications
log files. The developers will push the log files automatically to The S3 from The Web application ec2 machine using VPC endpoint and IAM
Role credentials.

Therefore, You’re requested to provision an S3 object general purpose storage and a directory called “logs,“ ensuring the bucket owner
owns all the objects, Block public access, enable versioning, disable object lock, as well as provision a gateway VPC endpoint for The S3,
and provision an IAM Role, ec2 machine _“i.e. The web application server“_ Holds created IAM Role consisting of S3 full access AWS
managed policy.

After provisioning the required Resources, Check the user accessibility utilizing AWS CLI _e.g. aws s3 command, and AWS CLI s3api
command._ 

The FrogTech security team has some concerns about this implementation as well, including enabling object encryption as “SSE-S3” and
enabling the Bucket key.

<br>

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Store state file backend into S3.
3. Resources must have common tags combination as below:
    - Common tags:
        - Key: “Environment”, Value: “terraformChamps”
        - Key: “Owner”, Value: <“Your_first_name“>

**Bouns**
1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you to get back and refresh_
    _your knowledge later_


## References:

- [EC2 instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html?icmpid=docs_ec2_console)
- [VPC endpoint](https://docs.aws.amazon.com/vpc/latest/privatelink/create-interface-endpoint.html)
- [code sample 01](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/06-S3Bucket)
