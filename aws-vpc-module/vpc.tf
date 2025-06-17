#VPC roboshop-dev-
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
   
  tags = merge (
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}

#IGW roboshop-dev
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id  #association with vpc

  tags = merge (
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}

# roboshop-dev-public-us-east-1a/1b
resource "aws_subnet" "public" {
    count = length(var.public_subnet_cidrs)
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet_cidrs[count.index]
    availability_zone = local.az_names[count.index]
    map_public_ip_on_launch = true


  tags = merge (
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-public-${local.az_names[count.index]}"
    }
  )
}

# roboshop-dev-private-us-east-1a/1b
resource "aws_subnet" "private" {
    count = length(var.private_subnet_cidrs)
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet_cidrs[count.index]
    availability_zone = local.az_names[count.index]
    map_public_ip_on_launch = true

    tags = merge (
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-private-${local.az_names[count.index]}"
    }
  )
}


# roboshop-dev-database-us-east-1a/1b
resource "aws_subnet" "database" {
    count = length(var.database_subnet_cidrs)
    vpc_id = aws_vpc.main.id
    cidr_block = var.database_subnet_cidrs[count.index]
    availability_zone = local.az_names[count.index]
    map_public_ip_on_launch = true

    tags = merge (
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-database-${local.az_names[count.index]}"
    }
  )
}
