output "iam_roles_lookup_id" {
  description = "Map of id values across all iam_roles_lookup, keyed the same as var.iam_roles_lookup"
  value       = { for k, v in data.aws_iam_roles.iam_roles_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_roles_lookup_arns" {
  description = "Map of arns values across all iam_roles_lookup, keyed the same as var.iam_roles_lookup"
  value       = { for k, v in data.aws_iam_roles.iam_roles_lookup : k => v.arns if v.arns != null && length(v.arns) > 0 }
}
output "iam_roles_lookup_name_regex" {
  description = "Map of name_regex values across all iam_roles_lookup, keyed the same as var.iam_roles_lookup"
  value       = { for k, v in data.aws_iam_roles.iam_roles_lookup : k => v.name_regex if v.name_regex != null && length(v.name_regex) > 0 }
}
output "iam_roles_lookup_names" {
  description = "Map of names values across all iam_roles_lookup, keyed the same as var.iam_roles_lookup"
  value       = { for k, v in data.aws_iam_roles.iam_roles_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "iam_roles_lookup_path_prefix" {
  description = "Map of path_prefix values across all iam_roles_lookup, keyed the same as var.iam_roles_lookup"
  value       = { for k, v in data.aws_iam_roles.iam_roles_lookup : k => v.path_prefix if v.path_prefix != null && length(v.path_prefix) > 0 }
}

