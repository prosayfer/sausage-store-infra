variable "instance_zone" {
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable  = false
}

variable "platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Instance physical processor"
  validation {
    condition     = contains(toset(["standard-v1", "standard-v2", "standard-v3"]), var.platform_id)
    error_message = "Select physical processor from the list: standard-v1, standard-v2, standard-v3."
  }
  sensitive = true
  nullable  = false
}

variable "disk_image_id" {
  type        = string
  description = "A disk image to initialize this disk from"
  sensitive   = true
  nullable    = false
}

variable "disk_size" {
  type        = number
  default     = 50
  description = "Size of the disk in GB"
  sensitive   = true
  nullable    = false
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to attach this interface to"
  sensitive   = true
  nullable    = false
}