output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}

output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "The domain name of the load balancer"
}

output "s3_bucket_arn"{
  value = aws_s3_bucket.terraform_state.arn
  description = "The arn of the s3 bucket"
}

output "dynamo_table_name"{
  value = aws_dynamodb_table.terraform_locks.name
  description = "The name pf the DynamoDB table"
}