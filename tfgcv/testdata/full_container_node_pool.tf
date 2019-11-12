resource "google_container_node_pool" "full_list_default_1" {
  name = "test-node-pool"

  # TODO: add beta fields.
  # node_config.sandbox_config
  # node_config.workload_metadata_config
  # node_locations

  autoscaling {
    min_node_count = 42
    max_node_count = 1337
  }
  cluster = "test-cluster"
  initial_node_count = 42
  location = "test-location"
  management {
    auto_repair = true
    auto_upgrade = true
  }
  max_pods_per_node = 42
  node_config {
    disk_size_gb = 42
    disk_type = "pd-standard"
    guest_accelerator {
      type  = "test-type1"
      count = 1
    }
    guest_accelerator {
      type  = "test-type2"
      count = 1
    }
    image_type = "test-image_type"
    labels = {
      test-label-key = "test-label-value"
    }
    local_ssd_count = 42
    machine_type = "test-machine_type"
    metadata = {
      test-metadata-key = "test-metadata-value"
    }
    min_cpu_platform = "test-min_cpu_platform"
    oauth_scopes = ["test-oauth_scopes", "storage-ro"]
    preemptible = true
    service_account = "test-service_account"
    tags = ["test-tags"]
    taint {
      key    = "test-key1"
      value  = "test-value1"
      effect = "NO_SCHEDULE"
    }
    taint {
      key    = "test-key2"
      value  = "test-value2"
      effect = "NO_SCHEDULE"
    }
  }
  node_count = 42
  region = "test-region"
  version = "test-version"
  zone = "test-zone"
}
