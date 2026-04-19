variable "aws_region" { 
  description = "AWS region" 
  type        = string 
} 
 
variable "vpc_id" { 
  description = "VPC ID where RDS will be deployed" 
  type        = string 
} 
 
variable "subnet_ids" { 
  description = "Private subnet IDs for RDS subnet group" 
  type        = list(string) 
} 
 
variable "db_name" { 
  description = "Initial database name" 
  type        = string  
} 
 
variable "db_username" { 
  description = "Master DB username" 
  type        = string 
} 
 
variable "db_password" { 
  description = "Master DB password" 
  type        = string 
  sensitive   = true 
} 
 
variable "allowed_cidr" { 
  description = "CIDR block allowed to access MySQL" 
  type        = string  
} 
 
variable "environment" { 
  description = "Deployment environment" 
  type        = string 
}

variable "db_secret_name" { 
  type = string 
} 