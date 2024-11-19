output "github_ssh_url" {
    description = "Github ssh url"
    value = github_repository.github_repo.ssh_clone_url
}

output "homepage_url" {
    description = "Github Action url"
    value = github_repository.github_repo.homepage_url
}
