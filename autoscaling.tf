resource "google_compute_instance_group_manager" "vm_group" {
  name               = "auto-scaling-group"
  base_instance_name = "vm-instance"
  zone              = var.zone

  version {
    instance_template = google_compute_instance_template.vm_template.self_link
  }

  target_size = 3  # Initial number of instances

  auto_healing_policies {
    health_check      = google_compute_health_check.default.self_link
    initial_delay_sec = 300
  }
}

resource "google_compute_autoscaler" "auto_scaler" {
  name   = "cpu-auto-scaler"
  zone   = var.zone
  target = google_compute_instance_group_manager.vm_group.self_link

  autoscaling_policy {
    max_replicas    = 6
    min_replicas    = 3
    cpu_utilization {
      target = 0.6  # Scale up if CPU > 60%
    }
  }
}
