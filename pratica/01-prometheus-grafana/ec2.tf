resource "aws_instance" "monitServer" {
    ami = "ami-026ebd4cfe2c043b2"
    instance_type = "t2.medium"
    key_name = "prometheus"
    vpc_security_group_ids = [aws_security_group.sg_monitServer.id]
    tags = {
        Name = "monitServer",
        IaC = "Terraform"
    }
}

resource "aws_instance" "node" {
    ami = "ami-026ebd4cfe2c043b2"
    instance_type = "t2.medium"
    key_name = "prometheus"
    vpc_security_group_ids = [aws_security_group.sg_node.id]
    tags = {
        Name = "node",
        IaC = "Terraform"
    }
}