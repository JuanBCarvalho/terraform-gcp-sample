# Terraform GCP Sample Code
This repositpry will hold information related to a terraform sample code on GCP, in order to use it as a KT for the team members of TCCC Engineering team, that will handle some Cloud Run Functions, and other services. 

## Contents

### terraform resources
google cloud run
basic terraform files: provider, backend, variables, main, outputs, tfvars example

Cloud Run service (hello world)

## Resources implemented

| Resource                              | Purpose                                                |
|----------------------------------------|---------------------------------------------------------|
| `google_project_service`               | Enables the Cloud Run API on the project                |
| `google_cloud_run_v2_service`           | Deploys the hello-world Cloud Run service                |
| `google_cloud_run_v2_service_iam_member`| Grants public (unauthenticated) access, for demo purposes |

## Not covered
terraform workspaces
vpc / firewall rules
