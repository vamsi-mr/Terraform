# AWS EC2 Instance
You can create Joindevops RHEL9 EC2 instnace using this module

# Inputs
- ami_id (optional) : AMI ID that needs to be used to create the instance

- instance_type (optional) : Instance type that needs to be used to create the instances. 
  Valid values are t2.mciro, t2.medium, t3.micro. Default instance type is t2.micro.

- sg_ids (Required) : A list of security group IDs to attach to the instances.

- tags (Required) : A map of tags that needs to be associated with the instances.

 
# Outputs

- public_ip : Public IP of the instance created
- private_ip : Private IP of the instance created
- instance_id : Instance id of the instance created
