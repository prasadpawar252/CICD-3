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

module "ecs" {
  source              = "./modules/ecs"
  environment         = var.environment
  image_uri           = var.image_uri
  execution_role_arn  = module.iam.execution_role_arn
  public_subnet_ids   = module.vpc.public_subnet_ids
}

module "alb" {
  source               = "./modules/alb"
  environment          = var.environment
  vpc_id               = module.vpc.vpc_id
  public_subnet_ids    = module.vpc.public_subnet_ids
  security_group_ids   = [] # TEMP (we will fix later)
}
