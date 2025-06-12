variable "project" {
  default = "RoboShop"
}


variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI Id of join-devops practice instance"
}


variable "environment" {
    
}


variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_description" {
    default = "allowing all ports from all IP"
}

variable "instances" {
    default = ["mongodb","redis"]
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



variable "zone_id" {
  default = "Z06734122W0TQFHN7RZBR"
}


variable "domain_name" {
  default = "ravada.site"
}


variable "instance_type" {
}