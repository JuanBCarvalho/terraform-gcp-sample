# Remote state backend. The bucket must exist before running `terraform init`
# GCP project for this bucket is still TBD - replace the placeholder below.
terraform {
  backend "gcs" {
    bucket = "TODO-terraform-gcp-sample-state"
    prefix = "terraform-gcp-sample"
  }
}
