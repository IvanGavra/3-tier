resource "aws_launch_template" "template_web" {
  name          = var.launch_template-web-name
  image_id      = var.web-image-id
  instance_type = var.web-instance-type
  key_name      = var.key-name

  network_interfaces {
    device_index    = 0
    security_groups = [aws_security_group.asg-security_group-web.id]
  }
  user_data = filebase64("user-data.sh")

  tag_specifications {

    resource_type = "instance"
    tags = {
      Name = var.web-instance-name
    }
    
  } 
 
   
}

