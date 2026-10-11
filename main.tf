resource "databricks_repo" "repos" {
  for_each = var.repos

  url               = each.value.url
  branch            = each.value.branch
  commit_hash       = each.value.commit_hash
  git_credential_id = each.value.git_credential_id
  git_provider      = each.value.git_provider
  path              = each.value.path
  tag               = each.value.tag

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "sparse_checkout" {
    for_each = each.value.sparse_checkout != null ? [each.value.sparse_checkout] : []
    content {
      patterns = sparse_checkout.value.patterns
    }
  }
}

