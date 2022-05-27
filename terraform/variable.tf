variable "pub_repo_names" {
  description = "List of public repository names"
  type        = list(string)
  default = [
    "legacy"
  ]
}
