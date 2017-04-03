output "sqs_id" {
  value = "${aws_sqs_queue.main_queue.id}"
}

output "sqs_arn" {
 value = "${aws_sqs_queue.main_queue.arn}"
}
