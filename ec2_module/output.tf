output "ami_id" {
  value=var.ami_id
}
output "region" {
  value = var.region
}
output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip
}

output "instance_private_ip" {
  value = module.ec2_instance.instance_private_ip
}

output "key_name" {
  value = var.key_name
}

