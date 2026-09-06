# Lambda - Invoke SSM document

## _#week_nine - Invoke SSM Document by Lambda_
<br>

**_duration: 1 week_**
<br><br>


ForgTech company wanna test your ability to type down a clean code by deploying the structure of resources. This will help you to build a
good reputation.

FrogTech intends to use CloudWatch to invoke a Lambda Python Function that triggers an SSM shell document in order to automate common
mitigation responses. You have requested to deploy a Lambda Python function that triggers an SSM Shell document that restarts the SSH
service, besides deploying a temporary EC2 machine to test the trigger functionality.

FrogTech is required to use high-level HCL language techniques by using if conditions to allow users to input the resource tag values else
insert a random value instead, use local variables to combine common tags, and use one package zip file that includes all function library
dependencies and do NOT use AWS native libraries _(i.e. insert the zip package directly to you HCL code Or upload it manually into an S
then mention it into you HCL code_ )
<br><br>

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Resources must have a common tag combination as below:
3. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
4. Create & share a document that explains what you learned.
5. Build an Architecture diagram of the deployment resources.
<br><br><br>


**SSM AWS-RunShellScript example**

```json
{
  "schemaVersion": "2.2",
  "description": "Use this document to deploy and configure Linux Servers",
  "mainSteps": [
    {
      "action": "aws:runShellScript",
      "name": "runShellScript",
      "precondition": {
        "StringEquals": [
          "platformType",
          "Linux"
        ]
      },
      "inputs": {
        "runCommand": [
          "#!/bin/bash",
          "mkdir /testDir",
          "touch /testDir/testFile"
        ]
      }
    }
  ]
}
```
<br>


### **References:**

- [\[AWS\] Lambda - Invoke SSM + Terraform Project 07](https://mohamed-eleraky.hashnode.dev/aws-lambda-invoke-ssm-terraform-project-07#heading-ec2-resources-deployment)  ( Invalid Link )
- [Terraform Tricks](https://mohamed-eleraky.hashnode.dev/terraform-tricks)  ( Invalid Link )
- [\[AWS\] Lambda Concepts Essentials](https://mohamed-eleraky.hashnode.dev/aws-lambda-concepts-essentials#heading-create-the-deployment-package-virtual-environment)  ( Invalid Link )
- [Create dynamic expressions | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/configuration-language/expressions#create-infrastructure)
- https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo 28-basic_conditionl_expression   ( Invalid Link )

