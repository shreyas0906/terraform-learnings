output "address" {
    value = aws_db_instace.example.address
    description = "Connect to the database at this endpoint"
}

output "port" {
    value = aws_db_instace.example.port
    description = "The port the database is listening on"
}

