variable "cloud_id" {
  type        = string
  description = "Cloud id where resources should be created (for provider conf)"
  sensitive   = true
  nullable    = false
}

variable "folder_id" {
  type        = string
  description = "Folder id where resources should be created (for provider conf)"
  sensitive   = true
  nullable    = false
}

variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable  = false
}

variable "image_id" {
  type        = string
  default     = "fd80qm01ah03dkqb14lc"
  description = "A disk image to initialize this disk from"
  sensitive   = true
  nullable    = false
}

variable "subnet_id" {
  type        = string
  default     = "e9bs7kl3dvlsp0ap8tfg"
  description = "ID of the subnet to attach this interface to"
  sensitive   = true
  nullable    = false
}
