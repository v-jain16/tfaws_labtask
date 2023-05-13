module "ec2_multiple" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v5.0.0"

  for_each = local.multiple_instances

  name = "${local.name}-multi-${each.key}"

  instance_type          = each.value.instance_type
  availability_zone      = each.value.availability_zone
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = [module.security_group.security_group_id]

  enable_volume_tags = false
  root_block_device  = lookup(each.value, "root_block_device", [])

  tags = local.tags
}