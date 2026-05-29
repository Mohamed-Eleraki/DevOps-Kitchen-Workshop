# Azure DevOps - Environment
### _week_twentyfour - Azure DevOps Environment_

_**duration: 1 week**_

ForgTech company wanna test your ability to deliver their requirements into their Azure DevOps
projects.
This will help you build a good reputation. The purpose of this task is to protect their deployment
across environments (e.g. dev and pre-prod) by separating the deployment and applying
approvals and checks.
The FrogTech Tech Lead Team requests to protect the Terraform pipeline deployment with the
following requirements:
 1. Segregate deployment by environment, as they have dev and pre-prod subscriptions.
 2. The deployment for pre-prod should be accepted from the main branch only.
 3. A pre-approval for pre-prod is required for the terraform apply.
 4. Prefer to separate the pipeline jobs into multiple YAML file that are called from one main YAML.
 5. Authentication between Terraform and Azure should be done over service principal with contribution access.

<br>

 ## References:
 - [Building secure deployment pipelines with azure devops environments](https://eraki.hashnode.dev/building-secure-deployment-pipelines-with-azure-devops-environments-approvals)