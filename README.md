# GMaC - Github Management as Code

## Disclaimer:

> This is a personal project and a WIP

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

- Basic config on this repo
- Create codeowners
- Adjust README with the changes
- Create a basic terraform files
- Create a basic workflow

### Extra Docs and Ref:
- [Terraform resource doc in this projects](terraform/docs/TERRAFORM-DOCS.md) 
- [GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
- [Terrform Action to GHA](https://github.com/hashicorp/setup-terraform)
- [Criar um token de acesso pessoal](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
