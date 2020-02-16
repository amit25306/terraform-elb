resource "aws_security_group" "SG-Devops1" {

    name = "SG-Devops1"

    vpc_id =  "${var.aws_vpc}"

    tags = {
        Name = "SG-Devops1"
    }
}

resource "aws_security_group_rule" "allow-ingress" {

        type            = "ingress"
        from_port       = "0"
        to_port         = "0"
        protocol        = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        security_group_id = "${aws_security_group.sec-grp.id}"
}

resource "aws_security_group_rule" "allow-egress" {

        type            = "egress"
        from_port       = "0"
        to_port         = "0"
        protocol        = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        security_group_id = "${aws_security_group.sec-grp.id}"
}

