# S3 Bucket - Lifecycle

## _#day_three - File transition to storage classes_
<br>

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of resources. This will help you
to build a good reputation.

ForgTech is required to build an S3 Bucket and configure file transition to multiple storage classes for archiving and low-cost purposes.

The S3 requires to have directories as follows:

1. /log
2. /outgoing
3. /incoming
<br>

and file transition must match the following rules:

- Transition all files under /log to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.
- Transition all files under /log to Archive access (i.e. Glacier) 90 consecutive days after creation time.
- Transition all files under /log to Deep Archive access (i.e. Glacier Deep Archive) 180 consecutive days after creation time.
- Remove all files under /log 365 consecutive days after creation time.
- Transition all files under /outgoing with tag "notDeepArchive" to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.
- Transition all files under /outgoing to Archive access (i.e. Glacier) with the tag "notDeepArchive" 90 consecutive days after creation time.
- Transition all files under /incoming with size between 1MB to 1G to infrequent access (i.e. Standard-IA) 30 consecutive days after creation time.
- Transition all files under /incoming with size between 1MB to 1G to Archive access (i.e. Glacier) 90 consecutive days after creation time.

<br>
<br>

Use IaC Terraform to build all resources and consider the below requirements specifications. and ensuring that you can destroy the S3 _(i.e.
using terraform destroy command)_ even if the bucket is not empty.

1. Resources must be created at the us-east-1 region.
2. Resources must have tags as below:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
3. Preferd to use variables

## Code Sample:

- [Day Two sample/video](https://www.youtube.com/watch?v=CyaJXc78uP0&t=2101s)
- [Day Two sample/Blog](https://eraki.hashnode.dev/aws-s3bucket-lifecycle-terraform-project-09#heading-terraform-resources-code-steps)
- [Day Two sample/Storage Classes](https://www.canva.com/design/DAGFZObbdpk/ltK0rRtQ2cAquMCk0fgrEw/edit)
