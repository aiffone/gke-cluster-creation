module "project-services" {
  source                      = "../modules/project_services"
  project_id                  = "rmk-demo-344812"
  enable_apis                 = true
  disable_services_on_destroy = true

  activate_apis = [
    "iam.googleapis.com", "servicenetworking.googleapis.com", "artifactregistry.googleapis.com", "container.googleapis.com", "clouddeploy.googleapis.com", "cloudbuild.googleapis.com", "sourcerepo.googleapis.com", "cloudresourcemanager.googleapis.com", "servicenetworking.googleapis.com"
  ]
}