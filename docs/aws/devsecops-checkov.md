# Deliver DevSecOps

## _#week_twentysix - Terraform code scanning with checkov_
<br>

**_duration: 2 weeks_**
<br><br>

ForgTech company wanna test your ability to Deliver HCL code scanning using Checkov, This will help you to build a good reputation.

The FrogTech Security team requests you implement a scanning stage of the company main AWS Pipeline, with the criteria below:

1. The scan should match intended changes ( _i.e. do not scan_ .tf _files instead scan the plan result)_
2. The scan step action should run in parallel with the plan step.
3. The Checkov scan should run on JSON plan output, providing a human-readable format.
4. The Checkov scan should run before the manual approval stage.

As well as Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you in getting back
and refreshing your knowledge later._
<br><br>

By following The ForgTech deployment policy, you should deliver this deployment in an automated pipeline using AWS Pipeline and follow
the DevOps Team pipeline structure standards as The Pipeline stages should be as follows:

1. Preparation stage: This includes the installation and preparation steps _(i.e. install AWS CLI, Terraform, Python, Checkov, and Terraform_
    _Initialization)_
2. Plan Stage: This includes the terraform validation and plan commands; The plan must done by using the output file _(i.e. tfplan file)_
3. Scan step action: This includes the Checkov scan, and should be run on the plan result, as well as in parallel with Plan stage.
4. Manual approval: Pause the pipeline until Reviewed & Approved by the checker engineer.
5. Terraform apply: This includes Starting provision resources.
<br><br>

Consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Store state file backend into HCP | S3.
3. Resources must have common tags combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>


**Bonus**

1. Build an Architecture diagram of the Pipeline stages.
2. Append an extra step command of the Plan stage reviewing specific parts of attributes using jq command.
3. Crafting multiple HCP workspaces.
<br>

<br>


### **References:**

- [AWS CodePipeline Automate IaC provisioning](https://eraki.hashnode.dev/aws-codepipeline-automate-iac-provisioning)
- [AWS CodePipeline - Deliver DevSecOps](https://eraki.hashnode.dev/aws-codepipeline-deliver-devsecops#heading-update-buildspecyml)
- [What is checkov](https://www.checkov.io/1.Welcome/What%20is%20Checkov.html#supported-iac-types)
- [Custom policy overview](https://www.checkov.io/3.Custom%20Policies/Custom%20Policies%20Overview.html)
- [Terraform plan scanning](https://www.checkov.io/7.Scan%20Examples/Terraform%20Plan%20Scanning.html)
- [eraki code sample](https://github.com/Mohamed-Eleraki/terraform/blob/main/buildspec.yml)
