variable "security_group_ids" {
  default = ["sg-02d7436ae856ae341"]
}

variable "ec2_tags" {
  default = {
    Name        = "roboshop-cart"
    Terraform   = true
    Environment = "dev"
  }
}

variable "instance_type" {
  default = "t2.micro"
}
