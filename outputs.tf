output "repos_id" {
  description = "Map of id values across all repos, keyed the same as var.repos except keys with no id are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repos_branch" {
  description = "Map of branch values across all repos, keyed the same as var.repos except keys with no branch are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.branch if v.branch != null && length(v.branch) > 0 }
}
output "repos_commit_hash" {
  description = "Map of commit_hash values across all repos, keyed the same as var.repos except keys with no commit_hash are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.commit_hash if v.commit_hash != null && length(v.commit_hash) > 0 }
}
output "repos_git_credential_id" {
  description = "Map of git_credential_id values across all repos, keyed the same as var.repos except keys with no git_credential_id are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.git_credential_id if v.git_credential_id != null }
}
output "repos_git_provider" {
  description = "Map of git_provider values across all repos, keyed the same as var.repos except keys with no git_provider are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.git_provider if v.git_provider != null && length(v.git_provider) > 0 }
}
output "repos_path" {
  description = "Map of path values across all repos, keyed the same as var.repos except keys with no path are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.path if v.path != null && length(v.path) > 0 }
}
output "repos_provider_config" {
  description = "Map of provider_config values across all repos, keyed the same as var.repos except keys with no provider_config are omitted"
  value       = { for k, v in databricks_repo.repos : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "repos_sparse_checkout" {
  description = "Map of sparse_checkout values across all repos, keyed the same as var.repos except keys with no sparse_checkout are omitted"
  value       = { for k, v in databricks_repo.repos : k => one(v.sparse_checkout) if v.sparse_checkout != null && length(v.sparse_checkout) > 0 }
}
output "repos_tag" {
  description = "Map of tag values across all repos, keyed the same as var.repos except keys with no tag are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "repos_url" {
  description = "Map of url values across all repos, keyed the same as var.repos except keys with no url are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.url if v.url != null && length(v.url) > 0 }
}
output "repos_workspace_path" {
  description = "Map of workspace_path values across all repos, keyed the same as var.repos except keys with no workspace_path are omitted"
  value       = { for k, v in databricks_repo.repos : k => v.workspace_path if v.workspace_path != null && length(v.workspace_path) > 0 }
}

