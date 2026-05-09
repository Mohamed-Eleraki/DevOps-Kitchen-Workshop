# DevOps Kitchen Workshop

## Lambda - Invoke SSM Document

### #week_nine - Invoke SSM Document by Lambda

**Duration:** 1 week

---

## Overview

FrogTech company wants to test your ability to write clean code by deploying a structured set of resources. This will help you build a good reputation.

FrogTech intends to use **CloudWatch** to invoke a **Lambda Python Function** that triggers an **SSM shell document** in order to automate common mitigation responses.

You are required to:

- Deploy a Lambda Python function
- Trigger an SSM Shell document
- Restart SSH service
- Deploy a temporary EC2 instance to test the functionality

---

## Requirements

FrogTech requires using high-level **HCL techniques**:

- Use `if conditions` to allow users to input resource tag values
- Otherwise insert a random value
- Use `local variables` to combine common tags
- Use **one zip package** that includes all dependencies
- Do NOT use AWS native libraries
- You can:
  - Embed the zip file in HCL
  - OR upload it to S3 and reference it

---

## Infrastructure Requirements (Terraform)

Use **Terraform (IaC)** to build all resources:

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Resources must have common tags combination as below:
3. Common tags:
   a. Key: “Environment”, Value: “terraformChamps”
   b. Key: “Owner”, Value: <“Your_first_name“>
4. Create & Share a document that Explains what you learn.
5. Build an Architecture diagram of the deployment resources

---

## SSM Document Example (AWS-RunShellScript)

```json
{
  "schemaVersion": "2.2",
  "description": "Use this document to deploy and configure Linux Servers",
  "mainSteps": [
    {
      "action": "aws:runShellScript",
      "name": "runShellScript",
      "precondition": {
        "StringEquals": ["platformType", "Linux"]
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

---

## References

- AWS Lambda - Invoke SSM + Terraform Project Can't find link
- [Terraform Tricks] Can't find link
- AWS Lambda Concepts Essentials Can't find link
- [Terraform Dynamic Expressions (HashiCorp Docs)](https://developer.hashicorp.com/terraform/tutorials/configuration-language/expressions#create-infrastructure)
- GitHub Repo:
  https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/28-basic_conditionl_expression Can't find link

---
