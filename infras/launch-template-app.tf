resource "aws_launch_template" "launch_template-app" {
  name          = var.launch_template-app-name
  image_id      = var.image-id-app
  instance_type = var.instance_type-app
  key_name      = var.key-name

  network_interfaces {
    device_index    = 0
    security_groups = [aws_security_group.asg-sg-app.id]

  }

  tag_specifications {

    resource_type = "instance"
    tags = {
      Name = var.app-instance-name
    }
  }

}