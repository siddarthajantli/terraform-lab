
# terraform apply -var-file="dev-app.tfvars" -var="createdby=e2esa"

locals {
  tags = {
    Project     = var.project
    createdby   = var.createdby
    CreatedOn   = timestamp()
    Environment = var.environment
    TFWorkspace = terraform.workspace
  }
}

module "ecs_cluster" {
  source             = "../modules"
  #version            = "1.0.0"
  create_ecs_cluster = var.create_ecs_cluster
  ecs_cluster_name   = var.ecs_cluster_name
  container_insights = var.container_insights
  tags               = local.tags
}