variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI Id of join-devops practice instance"
}


variable "instance_type" {
  default = "t2.micro"
}


variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "RoboShop"
    Purpose = "Variables testing"
  }
}


variable "sg_name" {
  default = "allow-all"
}


variable "sg_description" {
  default = "allowing all traffic"
}


variable "from_port" {
  type    = number
  default = 0
}


variable "to_port" {
  default = 0
}


variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}


variable "sg_tags" {
  default = {
    Name = "allow-all"
  }
}


variable "instances" {
  default = {             #["mongodb", "redis", "mysql", "rabbitmq"] when using for each = toset ()
    mongodb  = "t2.micro" #each keyword is assigned for every iteration, you will get each.key and each.value
    redis    = "t2.micro"
    mysql    = "t2.micro"
    rabbitmq = "t2.micro"
  }
}


variable "zone_id" {
  default = "Z06734122W0TQFHN7RZBR"
}


variable "domain_name" {
  default = "ravada.site"
}