
resource "aws_security_group" "asia_pacific_sg" {
name = "asia pacific allow SG ${var.NAME}"

  ingress {
    to_port          = "22"
    from_port          = "22"
    protocol         = "tcp"
    cidr_blocks      = data.aws_ip_ranges.asia_pacific_ec2.cidr_blocks
  }


egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "httpd_sg" {
name = "httpd allow SG ${var.NAME}"


  ingress {
    to_port          = "80"
    from_port          = "80"
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    to_port          = "22"
    from_port          = "22"
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}

