resource "google_project_service" "run_api" {
  project            = var.project_id
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_v2_service" "hello_world" {
  name     = var.service_name
  location = var.region
  project  = var.project_id

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }

  depends_on = [google_project_service.run_api]
}

# Demo-only: allows unauthenticated public access to the service.
# Restrict or remove this in any non-demo environment.
resource "google_cloud_run_v2_service_iam_member" "public_invoker" {
  project  = google_cloud_run_v2_service.hello_world.project
  location = google_cloud_run_v2_service.hello_world.location
  name     = google_cloud_run_v2_service.hello_world.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
