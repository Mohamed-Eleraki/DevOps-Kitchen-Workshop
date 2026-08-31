# Azure DevOps - Branch Policies & Security
### _week_twentythree - Azure DevOps Repos_
<br>

_**duration: 1 week**_

<br> 

FrogTech company would like to test your ability to deliver their requirements in their Azure DevOps projects.
This will help you build a good reputation. The purpose of this task is to protect their main branch from unattended changes, as well as
configure branch users' permissions.
The FrogTech Tech Lead Team requests to protect the main branch based on the following requirements:


1. Protect merging on the Main branch, and only accept merges via pull requests.
2. Deny pushers from approving their own changes.
3. Force the tech lead to review all changes.
4. Protect merging on the main branch from non-standard branch names; the standard branch names should follow the naming convention below.
```bash
# -------------------------------------------------------
# Allowed patterns:
# 1. feat|fix|chore|refactor|docs|test/<workItemID>-description_context
# - Work item = 5–7 digits
# - Description = lowercase letters, numbers, dot, underscore, hyphen
# Example: feat/332200-add_new_pipeline
#
# 2. release/x.y.z
# -------------------------------------------------------
```

5. Assign the DevOps team sufficient access to clone, edit, and push with new branches that follow the standard naming convention
above

## References:
- [Locking Down Your Code: A Guide to Azure DevOps Branch Policies & Security](https://eraki.hashnode.dev/locking-down-your-code-a-guide-to-azure-devops-branch-policies-and-security)    ( Invalid Link )

