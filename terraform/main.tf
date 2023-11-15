module "ec2_module" {
  source = "./modules/ec2"

  vpc_id     = module.vpc_module.vpc_id
  subnet_id = module.vpc_module.subnet_ids
  key = "ssh-november"
  server_names = ["loadbalancer", "app1", "app2", "app3"]
}

module "vpc_module" {
  source = "./modules/vpc"

  # Variables for your VPC module
  cidr             = "10.0.0.0/16"
  name             = "my-vpc"
  subnets_cidr     = "10.0.1.0/24"
  availability_zones = "eu-central-1a"
  map_public_ip_on_launch = true
  tags             = {
    "Terraform"   = "true"
    "Environment" = "dev"
  }
}
