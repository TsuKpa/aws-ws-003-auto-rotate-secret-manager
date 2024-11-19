resource "github_repository" "github_repo" {
  name        = var.github_repo_name
  description = var.github_repo_description
  visibility  = "public"
  auto_init   = true
}

# resource "github_branch" "github_branchs" {
#   repository = github_repository.github_repo.name
#   branch     = "master"
#   depends_on = [github_repository.github_repo]
# }

# resource "github_branch_default" "github_branch_default" {
#   repository = github_repository.github_repo.name
#   branch     = github_branch.github_branchs.branch
#   rename     = true
#   depends_on = [github_branch.github_branchs]
# }


################################################################################
# S3 static website bucket
################################################################################

resource "github_repository_environment" "repo_environment" {
  repository  = github_repository.github_repo.name
  environment = "dev"
}

resource "github_actions_environment_secret" "test_secret" {
  for_each = {
    for i in var.secrets_list : i.name => i
  }
  repository      = github_repository.github_repo.name
  environment     = github_repository_environment.repo_environment.environment
  secret_name     = each.value.name
  plaintext_value = each.value.value
}

resource "null_resource" "push_source_code" {
  provisioner "local-exec" {
    when = create
    command = <<EOF
      #!/bin/bash
      cd ../next-app/
      git init
      git add .
      git commit -m "Initial Commit"
      git remote add origin ${github_repository.github_repo.http_clone_url}
      git checkout -b master
      git push -u -f origin master
    EOF
  }

  depends_on = [ github_repository.github_repo ]
}

resource "null_resource" "remove_git_config" {
  provisioner "local-exec" {
    when = destroy
    command = <<EOF
      #!/bin/bash
      cd ../next-app/ && rm -rf .git
    EOF
  }

  depends_on = [ github_repository.github_repo ]
}