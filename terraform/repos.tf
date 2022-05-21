resource "github_repository" "example" {
  name        = "miniature-octo-giggle"
  description = "This whas created with terraform"

  visibility             = "public"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  gitignore_template     = "terraform"
  archive_on_destroy     = true
  topics                 = ["eac", "test", "created-by-gmac"]
  vulnerability_alerts   = true
}

resource "github_branch_protection" "example" {
  repository_id    = github_repository.example.node_id
  pattern          = "main"
  enforce_admins   = false
  allows_deletions = false
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = true
    required_approving_review_count = 2
  }
}