data "terraform_remote_state" "iac_state" {
  backend = "gcs"
 # config = {
   # bucket = "hmh-sand-terraform-state-sandboxes"
   # prefix = "Teams/Server_Engineering"
 # }
locals {
  sandbox_outputs = data.terraform_remote_state.iac_state.outputs.sandbox_projects.sandbox_outputs
}

