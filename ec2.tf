provider "aws" {
  access_key = "AKIAIXE2HZTTDTBRQPRQ"
  secret_key = "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"
  region     = "ap-south-1"
}

variable "ami_id" {
  description = "ami-02913db388613c3e1"
  default = "ami-02913db388613c3e1"
}

variable "subnet_pub1" {
  description = "subnet-3cf86e70"
  default = "subnet-3cf86e70"
}


resource "aws_instance" "bootcamp" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet_pub1}"
}


