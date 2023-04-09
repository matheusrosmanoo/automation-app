output "vpc-infra" {
  value = {
    id = module.vpc.vpc_id
    cidr = module.vpc.vpc_cidr_block
  }
}