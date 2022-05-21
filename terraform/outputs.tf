output "pub_ssh_clone_url" {
  value = {
    for key, value in github_repository.public : key => value.ssh_clone_url
  }
  description = "URLs for git clone the public repository via SSH."
}

output "pub_http_clone_url" {
  value = {
    for key, value in github_repository.public : key => value.http_clone_url
  }
  description = "URLs for git clone the public repository via HTTPS."
}
