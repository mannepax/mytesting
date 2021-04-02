resource "aws_vpc" "myvpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags = {
        Name = "mytestvpc"
	    Owner = "Hari"
	    environment = "production"
    }
}


resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = "${aws_vpc.myvpc.id}"
	tags = {
        Name = "mytestvpc-igw"
    }
}