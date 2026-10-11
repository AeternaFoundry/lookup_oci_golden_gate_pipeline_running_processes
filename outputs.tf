output "golden_gate_pipeline_running_processes_lookup_id" {
  description = "Map of id values across all golden_gate_pipeline_running_processes_lookup, keyed the same as var.golden_gate_pipeline_running_processes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_running_processes.golden_gate_pipeline_running_processes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_pipeline_running_processes_lookup_filter" {
  description = "Map of filter values across all golden_gate_pipeline_running_processes_lookup, keyed the same as var.golden_gate_pipeline_running_processes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_running_processes.golden_gate_pipeline_running_processes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "golden_gate_pipeline_running_processes_lookup_pipeline_id" {
  description = "Map of pipeline_id values across all golden_gate_pipeline_running_processes_lookup, keyed the same as var.golden_gate_pipeline_running_processes_lookup except keys with no pipeline_id are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_running_processes.golden_gate_pipeline_running_processes_lookup : k => v.pipeline_id if v.pipeline_id != null && length(v.pipeline_id) > 0 }
}
output "golden_gate_pipeline_running_processes_lookup_pipeline_running_process_collection" {
  description = "Map of pipeline_running_process_collection values across all golden_gate_pipeline_running_processes_lookup, keyed the same as var.golden_gate_pipeline_running_processes_lookup except keys with no pipeline_running_process_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_running_processes.golden_gate_pipeline_running_processes_lookup : k => v.pipeline_running_process_collection if v.pipeline_running_process_collection != null && length(v.pipeline_running_process_collection) > 0 }
}

