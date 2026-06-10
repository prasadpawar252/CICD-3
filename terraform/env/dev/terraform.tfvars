environment = "dev"
vpc_cidr    = "10.0.0.0/16"

ecs_cluster_name = "dev-cluster"
ecs_service_name = "react-app-cluster"

# we will update this after ECR is created
image_uri = "991342296750.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest"
