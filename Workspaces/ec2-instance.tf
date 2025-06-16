resource "aws_instance" "roboshop" {
  count                  = length(var.instances)
  ami                    = var.ami_id
  instance_type          = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = merge(
    var.common_tags,
    {
      Name      = "${var.instances[count.index]}-${terraform.workspace}" #mongodb-dev/prod
      Component = "${var.instances[count.index]}"
      Project   = var.project
    }
  )

  provisioner "local-exec" {
  command = "echo ${self.private_ip} >> inventory"
  on_failure = continue #ignoring the errors
  }
}


resource "aws_security_group" "allow_all" {
  name        = "${var.sg_name}-${terraform.workspace}" # allow-all-dev/prod
  description = var.sg_description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.sg_name}-${terraform.workspace}"
    }
  )
}
