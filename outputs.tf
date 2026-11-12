output "actions_organization_permissions_id" {
  description = "Map of id values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => v.id }
}
output "actions_organization_permissions_allowed_actions" {
  description = "Map of allowed_actions values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => v.allowed_actions }
}
output "actions_organization_permissions_allowed_actions_config" {
  description = "Map of allowed_actions_config values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => one(v.allowed_actions_config) }
}
output "actions_organization_permissions_enabled_repositories" {
  description = "Map of enabled_repositories values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => v.enabled_repositories }
}
output "actions_organization_permissions_enabled_repositories_config" {
  description = "Map of enabled_repositories_config values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => one(v.enabled_repositories_config) }
}
output "actions_organization_permissions_sha_pinning_required" {
  description = "Map of sha_pinning_required values across all actions_organization_permissions, keyed the same as var.actions_organization_permissions"
  value       = { for k, v in github_actions_organization_permissions.actions_organization_permissions : k => v.sha_pinning_required }
}

