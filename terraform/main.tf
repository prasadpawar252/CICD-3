module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

module "iam" {
  source      = "./modules/iam"
  environment = var.environment
}

module "ecr" {
  source = "./modules/ecr"
}

module "alb" {
  source            = "./modules/alb"
  environment       = var.environment
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

module "ecs" {
  source             = "./modules/ecs"
  environment        = var.environment
  image_uri          = var.image_uri
  execution_role_arn = module.iam.execution_role_arn
  public_subnet_ids  = module.vpc.public_subnet_ids
  vpc_id             = module.vpc.vpc_id
  cluster_name       = var.ecs_cluster_name
  service_name       = var.ecs_service_name
  target_group_arn   = module.alb.target_group_arn
}
