# Automate Transit gateway deployment

## _#week_eleven _ & _ Twelve - Automate Transit gateway deployment utilizing CircleCI CI/CD & Terraform IaC_
<br>

**_duration: 2 weeks_**
<br><br>

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Cloud Network team requested you to provision a transit gateway based on AWS Best Practice as follows:

1. Deploy VPC_1 and VPC_2 including Private subnets and ec2 machines for traffic testing.
2. Deploy VPC_3 including public subnet.
3. Deploy Transit gateway The manage the internet traffic flow-driven from/to The Private subnets to The Public subnet.
<br><br>

By following The ForgTech deployment policy, you should deliver this deployment in an automated pipeline using CircleCI and follow the
DevOps Team pipeline structure standards as The Pipeline stages should be as follows:

1. Preparation stage: This includes the installation and preparation steps _(i.e. install AWS CLI, Terraform, and Terraform Initialization)_ the
    installation must be done by Commands map.
2. Plan Stage: This includes the terraform validation and plan commands; The plan must done by using the output file _(i.e. tfplan_tgw file,)_
    _and_ Then Saving the output plan file using CircleCI workspace.
3. Manual approval: Pause the pipeline until Reviewed & Approved by the checker engineer.
4. Terraform apply: This includes attaching the output plan saved file in the plan stage and then Starting provision resources.
    the

After provisioning the required Resources, Check The deployed EC2 machines in the private subnet’s internet accessibility using the
package manager command:
```bash
dnf search httpd
```
<br>

Consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Store state file backend into HCP.
3. Resources must have common tags combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>

**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you to get back and refresh_
    _your knowledge later_
3. Append an extra step command of the Plan stage reviewing specific parts of attributes using jq command.
4. Crafting multiple HCP workspaces.
<br>

<br>

### **References:**

- [Example: Centralized outbound routing to the internet](https://docs.aws.amazon.com/vpc/latest/tgw/how-transit-gateways-work.html#transit-gateway-nat-igw-overview)
- [CircleCI - Commands map](https://circleci.com/docs/reference/configuration-reference/#commands)
- [jq code example](https://github.com/Mohamed-Eleraki/terraform/blob/main/buildspec.yml)
- [jq command example](https://stackoverflow.com/questions/59079708/how-to-use-jq-to-extract-a-particular-field-from-a-terraform-state-file)
- [CircleCI pipeline sample](https://github.com/Mohamed-Eleraki/terraform/blob/circleci-project-setup/.circleci/config.yml)
- [Transit gateway Article](https://mohamed-eleraky.hashnode.dev/aws-transitgateway-terrafrom-project-02)
- [Transit gateway code sample](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/05-Article2-TransitGateway)
- [Transit gateway online session](https://www.youtube.com/watch?v=x0pSa_M9WSM)

