<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch_protection.pub_main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.pub_release](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.public](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.gitignore_file](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.license_file](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pub_repo_names"></a> [pub\_repo\_names](#input\_pub\_repo\_names) | List of public repository names | `list(string)` | <pre>[<br>  "legacy",<br>  "tf-aws-luperca"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pub_http_clone_url"></a> [pub\_http\_clone\_url](#output\_pub\_http\_clone\_url) | URLs for git clone the public repository via HTTPS. |
| <a name="output_pub_ssh_clone_url"></a> [pub\_ssh\_clone\_url](#output\_pub\_ssh\_clone\_url) | URLs for git clone the public repository via SSH. |
<!-- END_TF_DOCS -->
