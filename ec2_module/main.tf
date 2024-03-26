module "ec2_instance" {
  source            = "../ec2_resource"
  ami_id            = var.ami_id
  region            = var.region
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  instance_name     =  var.instance_name
  owner             = var.owner
  purpose           = var.purpose
  application_name  = var.application_name
  project_name      = var.project_name
  client            = var.client
  department        = var.department
  start_date        = var.start_date
  end_date          = var.end_date
  key_name          = var.key_name
  availability_zone = var.availability_zone
}      