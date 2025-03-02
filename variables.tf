variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region for the VM"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone for the VM"
  type        = string
  default     = "us-central1-a"
}
