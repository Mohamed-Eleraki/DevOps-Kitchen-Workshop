# Highly available Design deployment

## _#week_Thirteen&Fourteen - Higly available Application & Database deployment utilizing CircleCI CI/CD & Terraform IaC_
<br>

**_duration: 2 weeks_**<br><br>

ForgTech company wanna test your ability to type down a clean code by deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Architecture team requested implementing a highly available application and database in The Private VPC that was
created in the last lab.

The design should follow:

1. Deploying a highly available application using an Auto Scaling group, considering each server in a different availability zone.
2. Provision RDS Multi-AZ.
3. Building a simple application _(i.e. using Python, etc.. View resources below)_ ensuing successful communication between the App and
    Database.

As well as build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you in getting back
and refreshing your knowledge later._

By following the ForgTech deployment policy, you should deliver this deployment in an automated pipeline using CircleCI and follow the
DevOps Team pipeline structure standards, as The Pipeline stages should be as follows:

1. Preparation stage: This includes the installation and preparation steps _(i.e., install AWS CLI, Terraform, and Terraform Initialization)_. The
    installation must be done using the command map.
2. Plan Stage: This includes the Terraform validation and plan commands; The plan must be done using the output file _(i.e., tfplan file)
    Then save the output plan file using the CircleCI workspace to use it in another step.
3. Manual approval: Pause the pipeline until Reviewed & approved by the checker engineer.
4. Terraform apply: This includes attaching the saved output plan file in the plan stage and then starting to provision resources.
<br><br>
<br>

Consider the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Store the state file backend in HCP | S3.
3. Resources must have a common tag combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>


**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Append an extra step command in the Plan stage to review specific parts of attributes using the jq command.
3. Craft multiple HCP workspaces.
<br><br>

<br>

## References:

- [Sample application + Database communication](https://github.com/Mohamed-Eleraki/spring-boot-app)
- [Previous lab](https://github.com/Mohamed-Eleraki/DevOps-Kitchen-Workshop/blob/main/02-CircleCI/01-Automate_TGW_deployment/D-Automate_Transit_gateway_deployment.pdf)
- [Example: Centralized outbound routing to the internet](https://circleci.com/docs/reference/configuration-reference/#commands)
- [CircleCI - Commands map](https://circleci.com/docs/reference/configuration-reference/#commands)
- [jq code example](https://github.com/Mohamed-Eleraki/terraform/blob/main/buildspec.yml)  ( Invalid Link )
- [jq command example](https://stackoverflow.com/questions/59079708/how-to-use-jq-to-extract-a-particular-field-from-a-terraform-state-file)
- [CircleCI pipeline sample](https://github.com/Mohamed-Eleraki/terraform/blob/circleci-project-setup/.circleci/config.yml)  ( Invalid Link )
- [Transit gateway Article](https://mohamed-eleraky.hashnode.dev/aws-transitgateway-terrafrom-project-02)  ( Invalid Link )
- [Transit gateway code sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/05-Article2-TransitGateway)  ( Invalid Link )
- [Transit gateway online session](https://www.youtube.com/watch?v=x0pSa_M9WSM)
