data "aws_iam_roles" "iam_roles_lookup" {
  for_each = var.iam_roles_lookup

  name_regex  = each.value.name_regex
  path_prefix = each.value.path_prefix
}

