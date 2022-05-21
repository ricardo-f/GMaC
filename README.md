# GMaC - Github Management as Code

## Objective:

Create a repository that can be able to create other repositories with pre configurated settings such as:
- Branch protection.
- Template files like the ones decribed here: [Creating a default community health file](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file).
- Organizations, teams and users.

## How?

- The management will be done by using terraform with [GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
- For the CI/CD automation I'll try to use Github Action.

## Why?

- Personal project
- Learn more about this tools
- Share knowledge

## What Need to be done?

- To Do :triangular_flag_on_post:
    - Write final README.md (translate too?)
    - Automate tasks such as:
        - Terraform-docs generation
        - Terraform fmt application
- Doing :running:
    - Test tflint in ci workflow
- Done :white_check_mark:
    - Basic config on this repo
    - Create codeowners
    - Create a basic terraform files
    - Create a basic workflow
    - Testing terraform cloud as remote backend
    - Testing checkov as sec tool
    - Testing basic repo creation
    - Add more dynamic/logic to the tf code

### Extra Docs and Ref:
- [Terraform resource doc in this projects](terraform/docs/TERRAFORM-DOCS.md) 
- [GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
- [Terrform Action to GHA](https://github.com/hashicorp/setup-terraform)
- [Terraform Cloud](https://cloud.hashicorp.com/products/terraform)
- [Criar um token de acesso pessoal](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Checkov Docs](https://www.checkov.io/1.Welcome/Quick%20Start.html)
- [Terraform-Docs GHA](https://github.com/terraform-docs/gh-actions)
- [TFLint](https://github.com/terraform-linters/tflint)
