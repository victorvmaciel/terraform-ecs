module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "development"
  cidr = "172.16.0.0/16"
  
  
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  private_subnets = ["172.16.0.0/22", "172.16.4.0/22", "172.16.8.0/22", "172.16.12.0/22"]
  public_subnets  = ["172.16.16.0/22", "172.16.20.0/22", "172.16.24.0/22", "172.16.28.0/22"]
  enable_nat_gateway = true
  enable_vpn_gateway = true
  
  tags = {
    Terraform = "true"
    Enviroment = "development"
  }
}