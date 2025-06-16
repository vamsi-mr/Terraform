variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI Id of join-devops practice instance"
}

variable "instance_type" {
    type = string
    default = "t2.micro"

    validation {
        condition = contains(["t2.micro", "t2.medium", "t3.micro"], var.instance_type)
        error_message = "Valid values for instance_type are: t2.micro, t2.medium, t3.micro"
        }
}

variable "sg_ids" {
    type = list
}

variable "tags" {
    type = map
}