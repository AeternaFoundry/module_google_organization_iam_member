resource "google_organization_iam_member" "organization_iam_members" {
  for_each = var.organization_iam_members

  member = each.value.member
  org_id = each.value.org_id
  role   = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

