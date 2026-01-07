output "vpc" {
  value = module.vpc.vpc_id
}

output "public" {
  value = module.vpc.public_subnet_id
}

output "private" {
  value = module.vpc.private_subnet_id
}