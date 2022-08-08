data "github_user" "current" {
  username = ""
}

resource "github_repository" "tf_generated" {
  name        = "tf_generated"
  description = "Repo generated via terraform CLI"

  visibility = "internal"

}
