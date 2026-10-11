output "organization_iam_members_id" {
  description = "Map of id values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no id are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_iam_members_condition" {
  description = "Map of condition values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no condition are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "organization_iam_members_etag" {
  description = "Map of etag values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no etag are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "organization_iam_members_member" {
  description = "Map of member values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no member are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => v.member if v.member != null && length(v.member) > 0 }
}
output "organization_iam_members_org_id" {
  description = "Map of org_id values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no org_id are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "organization_iam_members_role" {
  description = "Map of role values across all organization_iam_members, keyed the same as var.organization_iam_members except keys with no role are omitted"
  value       = { for k, v in google_organization_iam_member.organization_iam_members : k => v.role if v.role != null && length(v.role) > 0 }
}

