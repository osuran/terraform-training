variable "ami" {
  type          = string
  default       = "ami-0a306845f8cfbd41a"
}

variable "instance_type" {
  type          = string
  default       = "t2.micro"
}

variable "instance_name" {
  description   = "Value of the Name tag for the EC2 instance"
  type          = string
  default       = "sonar"
}

variable "key_name" {
  type          = string
  default       = "osura-seoul"
}

variable "iam_role"{}

variable "server-type"{
   type          = string
   default ="hub"
}