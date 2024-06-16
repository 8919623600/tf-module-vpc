variable "VPC_CIDR" {}
variable "PUBLIC_SUBNET_CIDR" {}
variable "PRIVATE_SUBNET_CIDR" {}
variable "ENV" {}
variable "AZ" {}

# default
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_RT_ID" {}



variable  "ingress_rule" {
    default = [
    {
      description     = "ssh"
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
      
    },
    {
      description     = "web"
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
      
  },
     {
      description     = "jenkins"
      from_port       = 8080
      to_port         = 8080
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
      
  },
     {
      description        = "nexus"
      from_port          = 8081
      to_port            = 8081
      protocol           = "tcp"
      cidr_blocks        = ["0.0.0.0/0"]
      
  }
    ]
} 


variable "egress_rule" {
    default = [ {
      description        = "egress all"
      from_port          = 0
      to_port            = 0
      protocol           = "tcp"
      cidr_blocks        = ["0.0.0.0/0"]
      
    },
    ]
}

