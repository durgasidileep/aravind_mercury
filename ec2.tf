resource "aws_instance" "web-1" {
    ami = var.imagename
    #ami = "ami-0d857ff0f5fc4e03b"
    #ami = "${data.aws_ami.my_ami.id}"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "chilakakey1"
    subnet_id = "${aws_subnet.subnet-private.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
#    associate_private_ip_address = true	
    tags = {
        Name = "Ingestion1-prod"
        Env = "Prod"
        Owner = "Aravind"
	CostCenter = "ABCD"
    }
}
