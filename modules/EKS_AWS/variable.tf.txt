variable "eks" {
  description = "EKS data"
  type = object({
    cluster_name                     = string
    node_group_name                  = string
    node_name                        = string
    control_plane_subnets            = list(string)
    kubernetes_version               = string
    pod_srvc_cidr_block              = string
    node_group_default_desired_size  = number
    node_group_default_min_size      = number
    node_group_default_max_size      = number
    cluster_role_arn                 = string
    admin_role_cluster_arns          = list(string)
    node_role_arn                    = string
    sg_name                          = string
    cloudwatch_log_retention_in_days = number
    capacity_type                    = string
    addons = list(object({
      name                 = string
      version              = string
      configuration_values = string
    }))
    ltmp = object({
      name            = string
      instance_type   = string
      ami_filter_name = string
      user_data       = string
      key_name        = string
      ebs = list(object({
        device_name           = string
        delete_on_termination = bool
        volume_type           = string
        volume_size           = number
        encrypted             = string
      }))
    })
  })
}
 
variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = null
}

