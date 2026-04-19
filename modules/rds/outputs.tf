output "rds_endpoint" { 
  description = "RDS database endpoint" 
  value       = aws_db_instance.this.endpoint 
} 
 
output "rds_identifier" { 
  description = "RDS instance identifier" 
  value       = aws_db_instance.this.id 
} 
 
output "rds_security_group_id" { 
  description = "Security group ID attached to RDS" 
  value       = aws_security_group.this.id 
}