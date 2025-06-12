variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI Id of join-devops practice instance"
}


variable "instance_type" {
  default = "t2.micro"
}


variable "instances" {
  default = ["Earth", "Mars"]
  
}

variable "common_tags" {
  default = {
    Project   = "roboshop"
    Terraform = "true"
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