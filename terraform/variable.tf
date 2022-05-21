variable "pat" {
  description = "Personal Access Token, need to be generated at your pesonal setting"
  type        = string
  sensitive   = true
}

variable "pub_repo_names" {
  description = "List of public repository names"
  type        = list(string)
  default     = []
}
