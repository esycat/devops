provider "aws" {
  region  = "ap-southeast-2"
  profile = "wm-esycat"
}

data "aws_instances" "instances" {
  instance_tags = {
    role = "application"
  }

  /*
  filter {
    name   = "instance.group-id"
    values = ["sg-12345678"]
  }

  instance_state_names = ["running", "stopped"]
  */
}

resource "aws_cloudwatch_metric_alarm" "cloudwatch-alarm-cpu" {
  for_each = data.aws_instances.instances.ids

  alarm_name                = "${each.key}.cpu"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = "10"
  threshold_metric_id       = "ad"
  insufficient_data_actions = []

  metric_query {
    id          = "ad"
    expression  = "ANOMALY_DETECTION_BAND(cpu, 4)"
    label       = "CPUUtilization (Expected)"
    return_data = "true"
  }

  metric_query {
    id          = "cpu"
    return_data = "true"
    metric {
      metric_name = "CPUUtilization"
      namespace   = "AWS/EC2"
      period      = "60"
      stat        = "Average"

      #   dimensions = {
      #     InstanceId = data.aws_instances.instances.ids[count.index]
      #   }
    }
  }

}
