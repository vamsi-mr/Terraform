variable "project" {
  default = "RoboShop"
}

variable "environment" {
  default = "dev"
} 

variable "component" {
  default = "cart"
}


# variable "final-name" { 
#   default = "${var.project}-${var.environment}-${var.component}"   #variables are not allowed to inside variables
# }