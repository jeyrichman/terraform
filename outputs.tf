output "public_ip" {
  value = "${aws_instance.amazon_ami.public_ip}:8080"
}
