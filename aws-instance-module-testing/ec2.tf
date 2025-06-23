module "ec2_test" {
  source        = "../aws-instance-module"
  sg_ids        = var.security_group_ids
  instance_type = var.instance_type
  tags          = var.ec2_tags
}
