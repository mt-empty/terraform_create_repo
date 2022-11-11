
variable "token" {
  type        = string
  description = "Github token"
  sensitive   = true
}

variable "name" {
  type        = string
  description = "Github repository name"
  sensitive   = false
}

variable "description" {
  type      = string
  sensitive = false
}

variable "visibility" {
  type        = string
  description = "Github repository visibility, 'private' or 'public'"
  sensitive   = false
  validation {
    condition     = var.visibility == "private" || var.visibility == "public"
    error_message = "Please either choose private or public"
  }
}
