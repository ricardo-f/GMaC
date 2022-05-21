## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |

## Resources

| Name | Type |
|------|------|
| [github_repository.example](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pat"></a> [pat](#input\_pat) | Personal Access Token, need to be generated at your pesonal setting | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL git clone the repository via HTTPS. |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL git clone the repository via SSH. |
