bucket_name = "dev-proj-terraform-infra-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-central-1a", "eu-central-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJhFecnxEaffVAPuOIUR/Uto+auJGEl6M/Gmvvv8MyzlS+GHV/i8jN1F/0TUnX7vd3TB6BJhtTaDZC3pDPbVqD6Vj8XK9B6yt1r7SFuG+D8znKu3Wc7+YgcX5T4MPliE71Mytp/atlJQE+V6bIXj2ojNu0/DwcfMGsJw8H9zvprFZrPmdJpMRow3HxrdDInQTXZBsdYqxWJHerp7uyZQoHHEHdwrz8ptZz9HHkvAvprR8gCIWxEsBrgTvZS/pTb5R0HUKBXf0xTmwfjKyoE6nIyaNWchddXCXV8exM+FP68Sq1sLeONKg0nT8Nq4jJKFjTgfOuWJDxH50YlyGAD4ZiQ3yurwfn71resy3lAutraGHvrqSAknmWbvnZvSJfJwi4XTfoKix07kY8F89Zk2ljeaaftW+dhJzKhBzgbfK6gFmcR1zL10EsZ/uE/gaPbHzJ2ICPFsWq2apmlbZu1l1fUwS0XPStwQZlbP36kdgy6Rjn/fDdCoMTpBuWvdm3w9M= prade@DESKTOP-ACSF52I"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

ec2_user_data_install_apache = ""

domain_name = "pkcdtech.com"