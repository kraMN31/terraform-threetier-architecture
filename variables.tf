# AWS Provider variable
variable "region" {
  type    = string
  default = "us-east-1"
}

# VPC variable
variable "vpc_cidr_block" {
  description = "default vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

#web-subnet variables
variable "availability_zone" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "web_subnet_cidr" {
  type    = list(string)
  default = ["10.01.0/24", "10.02.0/24"]
}
variable "map_public_ip_on_launch" {
  default = true
}

#application subnet variables
variable "app_subnet_cidr" {
  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

#database subnet variables
variable "db_subnet_cidr" {
  type    = list(string)
  default = ["10.0.21.0/24", "10.0.22.0/24", "10.0.3.0/24"]
}

#route table variable
variable "rt_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

#ec2 instance variables
variable "ami_id" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

#security group variables
variable "from_port" {
  type    = list(number)
  default = [80, 0, 3306, 32768]
}
variable "to_port" {
  type    = list(number)
  default = [80, 0, 3306, 65535]
}
variable "cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

#alb variables
variable "load_balancer_type" {
  type    = string
  default = "application"
}
variable "alb_port" {
  type    = number
  default = 80
}
variable "alb_protocol" {
  type    = string
  default = "HTTP"
}
variable "alb_type" {
  type    = string
  default = "forward"
}


#db instance variables
variable "db_instance" {
  type = map(any)
  default = {
    allocated_storage   = 10
    engine              = "mysql"
    engine_version      = "8.0.20"
    instance_class      = "db.t2.micro"
    multi_az            = true
    name                = "mydb"
    username            = "username"
    password            = "password"
    skip_final_snapshot = true
  }
}

