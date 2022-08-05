resource "github_repository" "tf-generated" {
  name        = "tf-generated"
  description = "Repo generated via terraform CLI"

  private = true

}
