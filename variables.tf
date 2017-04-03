variable "aws_region" {
  default = "us-east-1"
}

variable "name" {
  description = "The name of your Simple Queue Service"
}

variable "delay_seconds" {
  default = "90"
}

variable "max_message_size" {
  default = "2048"
}

variable "message_retention_seconds" {
  default = "86400"
}

variable "receive_wait_time_seconds" {
  default = "10"
}

# DeadLetterQueue and redrive policy set in main.tf
# variable "redrive_policy" {
#   description = "The JSON policy to set up the Dead Letter Queue."
#   default = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.terraform_queue_deadletter.arn}\",\"maxReceiveCount\":3}"
# }
