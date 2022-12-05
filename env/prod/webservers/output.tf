output "private_instance_ids" {
  value = aws_instance.my_amazon[*].private_ip
}