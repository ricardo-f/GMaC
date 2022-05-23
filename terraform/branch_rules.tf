resource "github_branch_protection" "pub_main" {
  for_each = github_repository.public

  repository_id    = each.value.node_id
  pattern          = "main"
  enforce_admins   = false
  allows_deletions = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    required_approving_review_count = 2
  }

}

resource "github_branch_protection" "pub_release" {
  for_each = github_repository.public

  repository_id    = each.value.node_id
  pattern          = "release/*"
  enforce_admins   = true
  allows_deletions = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    required_approving_review_count = 2
  }

}
