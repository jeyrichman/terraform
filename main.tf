terraform {
  required_version = ">=v0.11.13"
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "amazon_ami" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.docker.name}"]

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = "${file("${var.key_path}/${var.key_name}")}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install docker -y",
      "sudo service docker start",
      "sudo usermod -a -G docker ec2-user",
      "sudo docker pull nginx",
      "sudo docker run --name nginx -d -p 8080:80 nginx"
    ]
  }

  tags {
    Name = "${var.name}"
  }
}
