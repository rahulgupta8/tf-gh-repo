resource "github_repository_environment" "development" {
  environment = "dev"
  repository  = github_repository.tf_generated.name

}

resource "github_repository_environment" "uat" {
  environment = "UAT"
  repository  = github_repository.tf_generated.name
}

resource "github_repository_environment" "production" {
  environment = "prod"
  repository  = github_repository.tf_generated.name
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
