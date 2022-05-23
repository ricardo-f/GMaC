resource "github_repository" "public" {
  for_each = toset(var.pub_repo_names)

  name                   = lower(replace(each.key, " ", "-"))
  visibility             = "public"
  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  archive_on_destroy     = true
  vulnerability_alerts   = true
}
