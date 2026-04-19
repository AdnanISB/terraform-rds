# Secrets Manager for RDS Credentials 
############################################ 
data "aws_secretsmanager_secret" "db" { 
  name = var.db_secret_name 
}
# Secrets Manager for RDS Credentials 
############################################ 
data "aws_secretsmanager_secret_version" "db_version" { 
  secret_id = data.aws_secretsmanager_secret.db.id
}
locals { 
  db_credentials = jsondecode(data.aws_secretsmanager_secret_version.db_version.secret_string) 
} 
