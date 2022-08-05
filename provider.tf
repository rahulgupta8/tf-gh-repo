resource "github_repository" "cp-tf-test-repo" {
  name        = "TF create repo"
  description = "My awesome codebase"

  visibility = "internal"

}