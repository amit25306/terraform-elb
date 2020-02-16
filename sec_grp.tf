resource "aws_security_group" "SG-Devops1" {

    name = "SG-Devops1"

    vpc_id =  "${var.aws_vpc}"

    tags = {
        Name = "SG-Devops1"
    }
}


