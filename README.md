# Terraform-Champs
Terraform Champs initiation offers practical Terraform tasks and a guide for beginners.
At the start I will provide an AWS account for each champion, along with a list of daily tasks spanning four days.

# Day one task
use IaC Terrafrom to build the following resource besides requirement specifications:

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