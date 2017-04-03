sqs_terraform_module
==============
A Terraform module for creating a Simple Queue Service.

Input Variables (see variables.tf for descriptions on fields)
---------------
* aws_region
* name
* delay_seconds
* max_message_size
* message_retention_seconds
* receive_wait_time_seconds
* redrive_policy

Outputs
-------
- `sqs_id`
- `sqs_arn`

Usage
-----
You can use these in your terraform template with the following steps.

1.) Adding a module resource to your template, e.g. `main.tf`

```
module "my_simple_queue_service" {
  source = "git::https://github.com/vbhasin22/sqs_terraform_module.git"
  aws_region = "${var.aws_region}"
  name = "${var.name}"
  delay_seconds  = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  redrive_policy  = "${var.redrive_policy}"
}
```

2.) Setting values for the following variables, either through a variables file or `-var` arguments on the CLI, or just consuming the default.

Authors
=======
Created and maintained by [Vikram Bhasin](mailto:v.bhasin1@gmail.com).
