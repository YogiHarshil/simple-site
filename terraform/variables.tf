variable "app_name" {
  default = "sample-app"
}
variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate to use for ALB"
  type        = string
}
variable "image_uri" {
  description = "Docker image URI for ECS"
  type        = string
}