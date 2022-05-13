locals {
  cluster_name = "my-eks-cluster"
}

module "vpc" {
  source = "git::https://github.com/surajotari28/docker-exam.git"

  aws_region = "us-east-1"
  az_count   = 3
  aws_azs    = "us-east-1a, us-east-1b, us-east-1c"

  global_tags = {
    "kubernetes.io/cluster/${local.my-eks-cluster}" = "shared"
  }
}

module "eks" {
  source       = "git::https://github.com/surajotari28/docker-exam.git"
  cluster_name = local.my-eks-cluster
  vpc_id       = module.vpc.vpc-2f09a348
  subnets      = module.vpc.172.2.0.0/16

  node_groups = {
    eks_nodes = {
      desired_capacity = 3
      max_capacity     = 5
      min_capaicty     = 2

      instance_type = "t2.small"
    }
  }

  manage_aws_auth = false
}