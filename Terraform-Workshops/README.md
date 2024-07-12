# Terraform-Champs
Terraform Champs initiation offers practical Terraform tasks and a guide for beginners.
At the start I will provide an AWS account for each champion, along with a list of daily tasks spanning four days.

# Day one task
use IaC Terrafrom to build the following resource besides requirement specifications:

- Create a diagram of this deployment.
- Create VPC.
- Create Public subnet.
- Create internet gateway attached to the subent.
- Create route table to route all trrafic to the internet gateway.

  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>

  - Preferd to use variables.
  ## Code Sample:
- [Day One sample](https://github.com/Mohamed-Eleraki/Terraform-Champs/tree/main/dayOneSample)
<br>
<br>



# Day Two task
use IaC Terrafrom to build the following resource besides requirement specifications:

- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
- Create S3 Bucket.
- Enable S3 Bucker Versioning.
- Disable ACL and ensure object ownership have "BucketOwnerEnforced"
- Create a directory under the S3 Bucket called "logs"
- Provide Bucket policy permission for your IAM user to upload object only under logs.
- Force destroy Bucket even if the bucket is not empty.

  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>

  - Preferd to use variables.
  ## Code Sample:
- [Day Two sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/09-S3BucketPolicy03)
- [Day Two sample](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/16-S3BucketArchive/configureProvider.tf)
<br>
<br>



# Day Three task
use IaC Terrafrom to build the following resource besides requirement specifications:

- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use difrrent name that others _(i.e. specify a unique name for state file key)_
- Create an S3 Bucket
- Create Directories as (e.g. /log, /outgoing, /incomming)
<br><br>
*Today's Example will Create an Amazon S3 storage and configure the S3 Lifecycle rules as as the following:*

- Transition all files under /log to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

- Transition all files under /log to Archive access (i.e. Glacier) 90 consecutive days after creation time.

- Transition all files under /log to Deep Archive access (i.e. Glacier Deep Archive) 180 consecutive days after creation time.

- Remove all files under /log 365 consecutive days after creation time.

- Transition all files under /outgoing with tag "notDeepArchive" to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

- Transition all files under /outgoing to Archive access (i.e. Glacier) with tag "notDeepArchive" 90 consecutive days after creation time.

- Transition all files under /incoming with size between 1MB to 1G to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.

- Transition all files under /incoming with size between 1MB to 1G to Archive access (i.e. Glacier) 90 consecutive days after creation time.


  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>

  - Preferd to use variables.
  ## Code Sample:
- [Day Two sample/Blog](https://mohamed-eleraky.hashnode.dev/aws-s3bucket-lifecycle-terraform-project-09)
- [Day Two sample/Code](https://github.com/Mohamed-Eleraki/Terraform-Champs/blob/main/dayTwoSample_hintsOnly/main.tf)
- [Day Two sample/Storage Classes](https://www.canva.com/design/DAGFZObbdpk/ltK0rRtQ2cAquMCk0fgrEw/edit?utm_content=DAGFZObbdpk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
  <br>
  <br>




  # Day Four task
use IaC Terrafrom to build the following resource besides requirement specifications:<br>

- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use difrrent name that others _(i.e. specify a unique name for state file key)_
- Create IAM user named Ahmed *
    - With EC2 Administrator Policy _"AWS Managed policy"_
- Create IAM user named Mahmoud 
    - With S3 put and get objects restricted with specific source IP 
- Create IAM user named Mostafa 
    - With IAM Role have access to get objects from S3.

  
  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>

  - Preferd to use variables.
  ## Code Sample:
- [Day four sample/Blog](https://mohamed-eleraky.hashnode.dev/aws-s3bucket-mft-terraform-project-06#heading-the-architecture-design-diagram)
- [Day four sample/Code i.e. iam creation, IP restriction, etc](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/09-S3BucketPolicy03/iam.tf)
- [Day four sample/Attache AWS Managed policy to IAM Role](https://github.com/Mohamed-Eleraki/terraform/blob/main/AWS_Demo/14-lambda_run_SSM/iam.tf)<br><br>





  # Week Two task
using AWS documentations to learn more about Amazon Simple storage - S3 Bucket, besides using agile systems to submit tasks for your self of steps that you're walk through i.e. track your self, at the end create a document that summarize what did you learn. The Goal of these requirements is: <br>

- To get familiar with AWS Docs.
- Dealing with Agile systems that organize your studying plan.
- Learn typing professional documentations.

At the end of the week you should submit your list of what did you learn, and what you intend to learn next week, This helps you to track you self more. Then share with the DevOps Workshop Champs community your summarization document in order to help advance your documentaions writing skills. <br><br>

## Week Two Workshop 
At the end of the week, submit the following workshop.<br>
use IaC Terrafrom to build the following resource besides requirement specifications:<br>
In the following task will walk thrugh the S3 creation from the AWS console and trying to build each option that appears on the console using **Terrafrom**

- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use difrrent name that others _(i.e. specify a unique name for state file key)_

- Create a general pupose Bucket.
- Configure the object ownership as *"Bucket owner enforced"*.
- Block all public access.
- Enable bukcet versioning.
- specify tags that include in the **Requirement Specifications** below.
- Configure objects encryption as **"SSE-S3"**.
- Enable Bucket key.
- Disable object lock.
- Configure lifecycle expiration object at 7 days.
  
  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>

  - Preferd to use variables. <br><br>


  ## Code Sample:
- [Week two workshop code samples - Lama](https://github.com/Lamaalmassry/Terraform-champs/tree/main/Week%20Two%20Workshop)<br><br>





  # Week Three task
Using AWS documentations to DIG DEEP more about S3 Bucket Policy, AWS CLI s3 command, and AWS CLI s3api commands, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details<br>

- Dig deep into S3 policy
- Get familiar with AWS CLI s3 commands.
- Get familiar with AWS CLI s3api command,
- Define the diffrencies between S3 and S3api commands.
- Append new knowlege to your document.
- Fork this repo and append you code samples.
- Regarding AWS commands, Focusing on how to get and put objects.

At the end of the week you should submit your **list of what did you learn**, and what you **intend to learn next week**, This helps you to track you self more. Then share with the DevOps Workshop Champs community your **summarization document** in order to help advance your documentaions writing skills. <br><br>

## Resources 
- [AWS DOCS - S3 policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
- [AWS DOCS - S3 Commands reference](https://docs.aws.amazon.com/cli/latest/reference/s3/)
- [AWS DOCS - S3api commands reference](https://docs.aws.amazon.com/cli/latest/reference/s3api/)<br><br>

## Week Three Workshop 

At the end of the week, submit the following workshop.<br>
use IaC Terrafrom to build the following resource besides requirement specifications:<br>
In the following task will walk through the S3 creation, create IAM users and roles, configure S3 Policy, and test accessibility using AWS CLI s3 and s3api using IAM user credentials and IAM Role credentials using **Terrafrom**

- Create a diagram of this deployment.
- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use difrrent name that others _(i.e. specify a unique name for state file key)_

- Create a Directory under created S3 called "logs".
- Create two IAM Users (Mostafa, Taha).
- Create IAM Role for Taha have s3:GetObject policy from logs directory only.
- Set an S3 Policy allow Mostafa to put objects (i.e. s3:PutObject) at the entire S3.
- Check accessability using AWS CLI:
    - Utilizing AWS CLI s3 commands.
    - Utilizing AWS CLI s3api commands.<br>
- After all Create a fork from this repository, Then append your code at the code samples section below and request to accept.
  
  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>
  - Preferd to use variables. <br><br>


  ## Code Sample:
- [How to use IAM Role in Terminal](https://mohamed-eleraky.hashnode.dev/aws-s3bucket-mft-terraform-project-06#heading-check-taha-user-permissions)
- [Week Three workshop code samples](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/09-S3BucketPolicy03)<br><br>


  # Week Four task
Using AWS documentations to learn about EC2 instance types, VPC endpoints, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details<br>

- Learn about EC2 instance types.
- VPC endpoints.
- Append new knowlege to your document.
- Fork this repo and append you code samples.
- Design a diagram using draw.io of the below workshop.

At the end of the week you should submit your **Weekly report of what did you learn**, and what you **intend to learn next week**, This helps you to track you self more. Then share with the DevOps Workshop Champs community your **summarization document** in order to help advance your documentaions writing skills. <br><br>

## Resources 
- [EC2 instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html?icmpid=docs_ec2_console)
- [VPC endpoint](https://docs.aws.amazon.com/whitepapers/latest/aws-privatelink/what-are-vpc-endpoints.html)<br><br>

## Week Four Workshop 

At the end of the week, submit the following workshop.<br>
use IaC Terraform to build the following resource besides requirement specifications:<br>
In the following task will walk through the s3 creation, ec2 creation, create IAM Role holds s3 full access permission and attach it to the ec2, Then test accessibility by sending file to s3 from the ec2 machine using AWS CLI s3 and s3api using **Terrafrom**

- Create a diagram of this deployment.
- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use different name that others _(i.e. specify a unique name for state file key)_

- Create a general purpose Bucket.
- Create a Directory under created S3 called "logs".
- Create IAM Role for The ec2 machine have s3 full access aws managed policy.


- Create an ec2 machine holds the above role.
- Check accessability using AWS CLI, by sending a file to s3 bucket from The EC2 machine.
- After all Create a fork from this repository, Then append your code at the code samples section below and request to accept.
  
  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>
  - Preferd to use variables. <br><br>

# Week Five Task
Using AWS documentations to learn about Amazon Relation Database RDS, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details<br>

- Dig Deep into RDS.
- Append new knowlege to your document.
- Fork this repo and append you code samples.
- Design a diagram using draw.io of the below workshop.
This exercise will help you track your learning progress, ensure you understand key concepts of AWS RDS, and prepare you for the upcoming hands-on lab using Terraform.<br>

At the end of the week you should submit your **Weekly report of what did you learn**, and what you **intend to learn next week**, This helps you to track you self more. Then share with the DevOps Workshop Champs community your **summarization document** in order to help advance your documentaions writing skills. <br><br>

## Resources 
- [AWS RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html) <br><br>

## Week Five Workshop 

At the end of the week, submit the following workshop.<br>
use IaC Terraform to build the following resource besides requirement specifications:<br>
In the following task will walk through the RDS creation, Then test accessibility by pgadmin program.

- Create a diagram of this deployment.
- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use different name that others _(i.e. specify a unique name for state file key)_

- Create a VPC called vpc-01
- Create Subnets called subnet-01, subnet-02.
- Create a Security Group called sg-01
    - Allows inbound 5432 port form all.
    - Allows outbound role for all.

- Create a subnet group of RDS Holds the created subnets.
- Create a RDS instance of PostgreSQL latest version.
    - define allocate storage as 20
    - engine as postgres
    - engine_version as LATEST
    - instance_calss as db.t3.micro
    - name as postgresqldatabase
    - username as postgres
    - password as CHOOSE ONE
    - db_security_group_ids as created
    - vpc_security_group_ids as created
    - skip_final_snapshot as true
    - DON'T FORGET THE TAGS
    - after deployed, Check connection using pgadmin program from you local device; this requires the RDS to be publicly accessable.
  
  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>
  - Preferd to use variables. <br><br>


  ## Code Sample:
  - [Build RDS resources - Lama](https://github.com/Lamaalmassry/Terraform-champs/tree/main/Week%20Five%20Workshop)
  - [Build RDS resources - Mostafa](https://github.com/mostafa12345/weekfive)
  - [Build RDS resource - Eraki](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/22-deployBasicRDS)



# Week Six Task
Using AWS documentations to complete learn about Amazon Relation Database RDS, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic to cover listed below in details<br>

- Dig Deep into RDS.
- Besides covering the differences between Multi-az and read replicas
- Besides covering the differences between synchronous and Asynchronous replication
- Besides [Best practices for Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_BestPractices.html)
- Append new knowlege to your document.
- Fork this repo and append you code samples.
- Design a diagram using draw.io of the below workshop.
This exercise will help you track your learning progress, ensure you understand key concepts of AWS RDS, and prepare you for the upcoming hands-on lab using Terraform.<br>

At the end of the week you should submit your **Weekly report of what did you learn**, and what you **intend to learn next week**, This helps you to track you self more. Then share with the DevOps Workshop Champs community your **summarization document** in order to help advance your documentaions writing skills. <br><br>

## Resources 
- [AWS RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html) <br><br>

## Week Six Workshop 

At the end of the week, submit the following workshop.<br>
use IaC Terraform to build the following resource besides requirement specifications:<br>
In the following task will walk through the RDS creation, Then test accessibility by a bastion server.

- Create a diagram of this deployment.
- Use S3 to store Terraform statefile using "erakiterrafromstatefiles" bucket
    - Consider to use different name that others _(i.e. specify a unique name for state file key)_

- Deploy a Higly-available RDS in multiple Avalibility zones i.e. multi-az instance
- The RDS structure should be as primary and standby with out replica read
- Both of RDS using the same security group.
    - Allows inbound 5432 port form all.
    - Allows outbound role for all.
- The RDS should NOT be publicly accessable.
- Create a bastion host at the same VPC and connect to The RDS using psql commands

  ## Requirement Specifications:
  - Resources must be created at us-east-1 region otherwise will fail.
  - Resources must have tags as below otherwise will fail <br>
    Key: "Environment"   Value: "terraformChamps" <br>
    Key: "Owner"   Value: "<type_your_name_here>" <br>
  - Preferd to use variables. <br><br>


  ## Code Sample:
 - [Deploy basic RDS](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/22-deployBasicRDS)


# Week Seven Task
Using AWS documentations to complete learn about Amazon Relation Database RDS, Besides Append new knowlege at your document, Also learn how to fork a GitHub repo, The all topic/resources to Quickly walk through listed below in details<br>

- [Configuring an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_RDS_Configuring.html)
- [Managing an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_RDS_Managing.html)
- [Configuring and managing a Multi-AZ deployment](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html)
- [Using Amazon RDS Extended Support](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html)
- [Using Amazon RDS Blue/Green Deployments for database updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
- [Backing up, restoring, and exporting data](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_CommonTasks.BackupRestore.html)
- [Monitoring metrics in an Amazon RDS instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Monitoring.html)
- [Monitoring events, logs, and streams in an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Monitor_Logs_Events.html)
- [Using Amazon RDS Proxy](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy.html)
- Append new knowlege to your document.
- Fork this repo and append you code samples.
- Design a diagram using draw.io of the below workshop.
This exercise will help you track your learning progress, ensure you understand key concepts of AWS RDS, and prepare you for the upcoming hands-on lab using Terraform.<br>

At the end of the week you should submit your **Weekly report of what did you learn**, and what you **intend to learn next week**, This helps you to track you self more. Then share with the DevOps Workshop Champs community your **summarization document** in order to help advance your documentaions writing skills. <br><br>


## Week Seven Workshop 
Comming Soon!!


  ## Code Sample:
Comming Soon!!
