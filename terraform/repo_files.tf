resource "github_repository_file" "gitignore_file" {
  for_each = github_repository.public

  repository          = each.value.node_id
  branch              = "main"
  file                = ".gitignore"
  content             = file("template_files/.gitignore")
  commit_message      = "Managed by GMaC"
  overwrite_on_create = false
}