resource "github_issue_label" "bar" {
  repository  = "tfaction-example"
  name        = "bar-miles"
  color       = "FF0000"
  description = "bar"
}