output "cloud_run_url" {
  description = "URL of the deployed Cloud Run hello-world service"
  value       = google_cloud_run_v2_service.hello_world.uri
}
