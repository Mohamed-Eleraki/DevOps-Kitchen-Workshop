# Highly available Design deployment

## _#week_Thirteen&Fourteen - Higly available Application & Database deployment utilizing CircleCI CI/CD & Terraform IaC_
<br>

**_duration: 2 weeks_**<br><br>

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Architecture team requested implementing a highly available application and database in The Private VPC that had been
created last lab.

The design Should follow:

1. Deploying a Highly available application Using an Auto-scaling group considering each server in a different availability zone.
2. Provision RDS Multi-az.
3. Building a simple application _(i.e. using Python, etc.. View resources below)_ ensuing successful communication between the App and
    Database.

As well as Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you in getting back
and refreshing your knowledge later._

By following The ForgTech deployment policy, you should deliver this deployment in an automated pipeline using CircleCI and follow the
DevOps Team pipeline structure standards as The Pipeline stages should be as follows:

1. Preparation stage: This includes the installation and preparation steps _(i.e. install AWS CLI, Terraform, and Terraform Initialization)_ the
    installation must be done by Commands map.
2. Plan Stage: This includes the terraform validation and plan commands; The plan must done by using the output file _(i.e. tfplan file,)_ and
    Then Saving the output plan file using CircleCI workspace to use it in another step.
3. Manual approval: Pause the pipeline until Reviewed & Approved by the checker engineer.
4. Terraform apply: This includes attaching the output plan saved file in the plan stage and then Starting provision resources.
<br><br>
<br>

Consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Store state file backend into HCP | S3.
3. Resources must have common tags combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>


**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Append an extra step command of the Plan stage reviewing specific parts of attributes using jq command.
3. Crafting multiple HCP workspaces.
<br><br>

<br>

## References:

- [Sample application + Database communication](https://github.com/Mohamed-Eleraki/spring-boot-app)
- [Previous lab](https://github.com/Mohamed-Eleraki/DevOps-Kitchen-Workshop/blob/main/02-CircleCI/01-Automate_TGW_deployment/D-Automate_Transit_gateway_deployment.pdf)
- [Example: Centralized outbound routing to the internet](https://circleci.com/docs/reference/configuration-reference/#commands)
- [CircleCI - Commands map](https://circleci.com/docs/reference/configuration-reference/#commands)
- [jq code example](https://github.com/Mohamed-Eleraki/terraform/blob/main/buildspec.yml)
- [jq command example](https://stackoverflow.com/questions/59079708/how-to-use-jq-to-extract-a-particular-field-from-a-terraform-state-file)
- [CircleCI pipeline sample](https://github.com/Mohamed-Eleraki/terraform/blob/circleci-project-setup/.circleci/config.yml)
- [Transit gateway Article](https://mohamed-eleraky.hashnode.dev/aws-transitgateway-terrafrom-project-02)
- [Transit gateway code sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/05-Article2-TransitGateway)
- [Transit gateway online session](https://www.youtube.com/watch?v=x0pSa_M9WSM)
