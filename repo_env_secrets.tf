resource "github_actions_environment_secret" "test_secret" {
  repository      = github_repository.tf_generated.name
  environment     = github_repository_environment.development.environment
  secret_name     = "test_secret_name"
  plaintext_value = "%s"
}