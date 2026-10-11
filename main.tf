data "oci_golden_gate_pipeline_running_processes" "golden_gate_pipeline_running_processes_lookup" {
  for_each = var.golden_gate_pipeline_running_processes_lookup

  pipeline_id = each.value.pipeline_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

