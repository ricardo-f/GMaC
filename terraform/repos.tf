resource "github_repository" "example" {
  name        = "miniature-octo-giggle"
  description = "This whas created with terraform"

  visibility             = "public"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  is_template            = true
  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  gitignore_template     = "terraform"
  archive_on_destroy     = true
  topics                 = ["eac", "test", "managed by gmac"]
  vulnerability_alerts   = true
}