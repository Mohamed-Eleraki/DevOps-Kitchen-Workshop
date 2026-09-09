# Automate Transit Gateway deployment

## _#week_eleven _ & _ Twelve - Automate Transit Gateway deployment utilizing CircleCI CI/CD & Terraform IaC_
<br>

**_duration: 2 weeks_**
<br><br>

ForgTech company wanna test your ability to type down a clean code by deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Cloud Network team requested that you provision a transit gateway based on AWS best practices as follows:

1. Deploy VPC_1 and VPC_2 including Private subnets and ec2 machines for traffic testing.
2. Deploy VPC_3 including a public subnet.
3. Deploy a Transit gateway The manage the internet traffic flow from/to The Private subnets to The Public subnet.
<br><br>

By following the ForgTech deployment policy, you should deliver this deployment in an automated pipeline using CircleCI and follow the
DevOps Team pipeline structure standards, as The Pipeline stages should be as follows:

1. Preparation stage: This includes the installation and preparation steps _(i.e. install AWS CLI, Terraform, and Terraform Initialization)_. The
    installation must be done using the command map.
2. Plan Stage: This includes the Terraform validation and plan commands; The plan must be done using the output file _(i.e. tfplan_tgw file)_
    _and_ Then Saving the output plan file using the CircleCI workspace.
3. Manual approval: Pause the pipeline until Reviewed & approved by the checker engineer.
4. Terraform apply: This includes attaching the output plan saved file in the plan stage and then starting to provision resources.
    the

After provisioning the required Resources, Check The deployed EC2 machines in the private subnet’s internet accessibility using the
package manager command:
```bash
dnf search httpd
```
<br>

Consider the following requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Store the state file backend in HCP.
3. Resources must have a common tag combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>

**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e., this will assist you to get back and refresh_
    _your knowledge later_
3. Append an extra step command in the Plan stage to review specific parts of attributes using the jq command.
4. Crafting multiple HCP workspaces.
<br>

<br>

### **References:**

- [Example: Centralized outbound routing to the internet](https://docs.aws.amazon.com/vpc/latest/tgw/how-transit-gateways-work.html#transit-gateway-nat-igw-overview)
- [CircleCI - Commands map](https://circleci.com/docs/reference/configuration-reference/#commands)
- [jq code example](https://github.com/Mohamed-Eleraki/terraform/blob/main/buildspec.yml)
- [jq command example](https://stackoverflow.com/questions/59079708/how-to-use-jq-to-extract-a-particular-field-from-a-terraform-state-file)
- [CircleCI pipeline sample](https://github.com/Mohamed-Eleraki/terraform/blob/circleci-project-setup/.circleci/config.yml)
- [Transit gateway Article](https://eraki.hashnode.dev/aws-transitgateway-terrafrom-project-02)
- [Transit gateway code sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/05-Article2-TransitGateway)
- [Transit gateway online session](https://www.youtube.com/watch?v=x0pSa_M9WSM)

