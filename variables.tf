variable "organization_iam_members" {
  description = <<EOT
Map of organization_iam_members, attributes below
Required:
    - member
    - org_id
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member = string
    org_id = string
    role   = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

