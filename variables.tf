variable "repos" {
  description = <<EOT
Map of repos, attributes below
Required:
    - url
Optional:
    - branch
    - commit_hash
    - git_credential_id
    - git_provider
    - path
    - tag
    - provider_config (block):
        - workspace_id (optional)
    - sparse_checkout (block):
        - patterns (required)
EOT

  type = map(object({
    url               = string
    branch            = optional(string)
    commit_hash       = optional(string)
    git_credential_id = optional(number)
    git_provider      = optional(string)
    path              = optional(string)
    tag               = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    sparse_checkout = optional(object({
      patterns = list(string)
    }))
  }))
}

