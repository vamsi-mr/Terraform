output "public_ip" {
  value = module.ec2_test.public_ip
}

output "private_ip" {
  value = module.ec2_test.private_ip
}

output "instance_id" {
  value = module.ec2_test.id
}