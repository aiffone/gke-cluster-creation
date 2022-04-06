resource "google_cloudbuild_trigger" "build-image" {
    project = var.project
    name = "build-push-image"
  trigger_template {
    branch_name = "main"
    repo_name   = "cicd-sample"
    project_id = "kayprjct04"
  }
 
  substitutions = {
    _FOO = "bar"
    _BAZ = "qux"
  }
 
  filename = "cloudbuild.yaml"
}