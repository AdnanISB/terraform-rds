variable "aws_region" { 
  description = "AWS region" 
  type        = string 
  default     = "us-east-1" 
} 
 
variable "vpc_id" { 
  description = "VPC ID where RDS will be deployed" 
  type        = string 
  default = "vpc-078d976b27a52a58b"
} 
 
variable "subnet_ids" { 
  description = "Private subnet IDs for RDS subnet group" 
  type        = list(string) 
  default = [ "subnet-07381c5462d93eae8","subnet-041379fad4a6c7c01" ]
} 
 
variable "db_name" { 
  description = "Initial database name" 
  type        = string 
  default     = "appdb" 
} 
 
variable "db_username" { 
  description = "Master DB username" 
  type        = string 
  default = "admin"
} 
 
variable "db_password" { 
  description = "Master DB password" 
  type        = string 
  sensitive   = true 
  default = "StrongPassword123!"
} 
 
variable "allowed_cidr" { 
  description = "CIDR block allowed to access MySQL" 
  type        = string 
  default     = "10.0.0.0/16" 
} 
 
variable "environment" { 
  description = "Deployment environment" 
  type        = string 
  default     = "dev" 
}