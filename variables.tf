variable "iam_roles_lookup" {
  description = <<EOT
Map of iam_roles_lookup, attributes below
Optional:
    - name_regex
    - path_prefix
EOT

  type = map(object({
    name_regex  = optional(string)
    path_prefix = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

