module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.appName}-${var.productName}-${var.env}"
  cidr = "10.0.0.0/16"

  azs = ["${var.region}a"]
  private_subnets = [ "10.0.0.1/24" ]
  public_subnets = [ "10.0.0.101/24" ]

  enable_dns_hostnames = true
  enable_dns_support = true
  enable_nat_gateway = false
  enable_vpn_gateway = false
}