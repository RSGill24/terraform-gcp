/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


variable "project_id" {
  type        = string
  description = "The project to deploy to, if not set the default provider project is used."
  default     = null
}

variable "region" {
  description = "The region of the load balancer."
  default     = "us-east4"
}

variable "sa_email" {
  type        = string
  description = "Service account to attach to the VM instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template#service_account."
}

