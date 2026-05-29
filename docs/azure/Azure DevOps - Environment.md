# Azure DevOps - Environment

## week_twentyfour - Azure DevOps Environment

### Duration: 1 week


FrogTech company wants to test your ability to deliver their requirements into their Azure DevOps projects. This will help you build a good reputation. 
The purpose of this task is to protect their deployment across environments (e.g., dev and pre-prod) by separating the deployment and applying approvals and checks.


 

 The FrogTech Tech Lead Team requests to protect the Terraform pipeline deployment with the following requirements:







1. Segregate deployments by environment, as they have `dev` and `pre-prod` subscriptions.
2. The deployment for `pre-prod` should be accepted from the `main` branch only.
3. A Pre-Approval for `pre-prod` is required for the Terraform Apply stage.
4. Prefer to separate the pipeline jobs into multiple YAML files (templates) that are called from one main YAML file.
5. Authentication between Terraform and Azure should be done over a **Service Principal** with `Contributor` access.

### References:

https://eraki.hashnode.dev/building-secure-deployment-pipelines-with-azure-devops-environments-approvals


