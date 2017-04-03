provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_sqs_queue" "main_queue" {
  name = "${var.name}"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  redrive_policy = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.dead_queue.arn}\",\"maxReceiveCount\":3}"
}

resource "aws_sqs_queue" "dead_queue" {
  name = "${var.name}-DeadLetterQueue"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
}
