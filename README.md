# GMaC - Github Management as Code

## Objective:

This repo creates other repositories with pre configurated settings such as:
- Branch protection.
- Deletion of brach that was merged.
- Template files like the ones described here: [Creating a default community health file](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file).
- Organizations, teams, and users, _I don't use but is an available resource at the provider docs_.

## The brief how:

- Terraform files with terraform cloud configurated as remote state.
- Two workflow files were created one with the CI stuff to ensure code quality and security and the other with CD to apply what was defined.
- To create a repo you only need to add his name to the list at "pub_repo_names" variable and do the PR process.

## How?

- The management will be done by using the [GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs) for terraform.
- For the CI/CD automation I'm using Github Action with two workflow files:
    - The CI file has:
        - Terraform fmt check to ensure a readable code
        - Terraform validate to check the terraform file
        - A plan to preview what will be created
        - Checkov for sec test
    - The CD file has:
        - The plan and a PR comment with what will be created
        - And the "apply" of what has been displayed on the plan in the PR comment

## Why?

- Personal project.
- Learn more about the used tools.
- Share knowledge (that's why is public).

## Want help or test?

**Read the [contrib file](CONTRIBUTING.md)**

### Extra Docs and Ref:
- [Terraform resource doc in this projects](terraform/docs/TERRAFORM-DOCS.md) 
- [GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
- [Terrform Action to GHA](https://github.com/hashicorp/setup-terraform)
- [Terraform Cloud](https://cloud.hashicorp.com/products/terraform)
- [Checkov Docs](https://www.checkov.io/1.Welcome/Quick%20Start.html)
- [Terraform-Docs GHA](https://github.com/terraform-docs/gh-actions)
- [TFLint](https://github.com/terraform-linters/tflint)
