variable "golden_gate_pipeline_running_processes_lookup" {
  description = <<EOT
Map of golden_gate_pipeline_running_processes_lookup, attributes below
Required:
    - pipeline_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    pipeline_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

