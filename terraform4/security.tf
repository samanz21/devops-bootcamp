module "my_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "6.0.0"

  name            = "tf4-rackula-sg"
  use_name_prefix = false
  description     = "Public access for Rackula"
  vpc_id          = module.my_vpc.vpc_id

  ingress_rules = {
    rackula = {
      cidr_ipv4   = "0.0.0.0/0"
      description = "Rackula web interface"
      ip_protocol = "tcp"
      from_port   = 8080
      to_port     = 8080
    }
  }

  egress_rules = {
    all = {
      cidr_ipv4   = "0.0.0.0/0"
      description = "Allow outbound traffic"
      ip_protocol = "-1"
    }
  }
}