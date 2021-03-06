resource "github_repository_file" "gitignore_file" {
  for_each = github_repository.public

  repository          = each.value.name
  branch              = "main"
  file                = ".gitignore"
  content             = file("template_files/.gitignore")
  commit_message      = "Managed by GMaC"
  overwrite_on_create = false

  lifecycle {
    ignore_changes = [content]
  }
}

resource "github_repository_file" "license_file" {
  for_each = github_repository.public

  repository          = each.value.name
  branch              = "main"
  file                = "LICENSE"
  content             = file("template_files/LICENSE")
  commit_message      = "Managed by GMaC"
  overwrite_on_create = false

  lifecycle {
    ignore_changes = [content]
  }
}
