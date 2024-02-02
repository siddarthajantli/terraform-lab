# Common
project = "e2e-automation-lab"

# General 
aws_region  = "us-east-1"
profile     = "dev-lab"
environment = "dev"

# Backend
backend_s3_bucket      = "terraform-state-sidd-lab"
backend_dynamodb_table = "tf-dev-lock"

# ECS
create_ecs_cluster = true
ecs_cluster_name   = "e2e-auto-lab"