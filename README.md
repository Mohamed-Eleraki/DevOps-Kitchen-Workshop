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


