variable "network_zones" {
  type        = set(string)
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
  description = "Names of available zones"
  sensitive   = false
  nullable    = false
}
