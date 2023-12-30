variable "region" {
  description = "aws-region"
}

variable "vpc_cidr" {
  description = "vpc_cidr"
}

variable "vpc_name" {
  description = "vpc_name"
}

variable "web_subnet1-cidr" {
  description = "web-subnet1-cidr"
}
variable "web-subnet2-cidr" {
  description = "web-web_subnet2-cidr"

}

variable "availability_zone-1" {
  description = "availability_zone-1"
}
variable "availability-zone-2" {
  description = "availability_zone-2"

}


variable "web-subnet1-name" {
  description = "web_subnet_name1"
}

variable "web-subnet2-name" {
  description = "web-subnet2-name"
}

variable "app-subnet1-cidr" {
  description = "app-subnet1-cisr"
}

variable "app-subnet2-cidr" {
  description = "app-subnet2-cidr"

}

variable "app-subnet1-name" {
  description = "app-subnet1-name"
}

variable "app-subnet2-name" {
  description = "app-subnet2-name"
}

variable "db-subnet1-cidr" {
  description = "db-subnet1-cidr"
}

variable "db-subnet2-cidr" {
  description = "db-subnet2-cidr"
}

variable "db-subnet1-name" {
  description = "db-subnet1-name"
}

variable "db-subnet2-name" {
  description = "db-subnet2-name"
}

variable "igw-name" {
  description = "igw-name"

}
variable "nat-gw-name" {
  description = "nat-gw-name"
}

variable "public-rt-name" {
  description = "public-rt-name"
}
variable "private-rt-name" {
  description = "private-rt-name"

}

variable "launch_template-web-name" {
  description = "launch_template-web-name"

}

variable "web-image-id" {
  description = "web-iamge-id"
}

variable "web-instance-type" {
  description = "web-instance-type"
}

variable "key-name" {
  description = "ssh-keey name"

}

variable "web-instance-name" {
  description = "web-instance-name"

}
variable "alb-web-name" {
  description = "alb-web-name"

}

variable "alb-sg-web-name" {
  description = "alb-sg-web-name"

}

variable "tg-web-name" {
  description = "tg-web-name"

}

variable "asg-web-name" {
  description = "asg-web-name"

}

variable "asg-sg-name" {
  description = "asg-sg-name"

}

variable "alb-sg-app-name" {
  description = "alb-sg-app"
}
variable "launch_template-app-name" {
  description = "launch_template-app-name"

}
variable "asg-sg-app-name" {
  description = "asg-sg-app"

}

variable "image-id-app" {
  description = "image-id-app"

}

variable "instance_type-app" {
  description = "instance_type-app"
}

variable "app-instance-name" {
  description = "app-instance-name"

}

variable "alb-app-name" {
  description = "alb-app-name"

}

variable "tg-app-name" {
  description = "tg-app-name"
}

variable "db-subnet-grp-name" {
  description = "db-subnet-grp-name"

}

variable "db-name" {
  description = "db-name"

}

variable "db_instance-class" {
  description = "db-instance-class"

}
variable "db_username" {
  description = "db-username"
}

variable "db-password" {
  description = "db-password"

}

variable "db-sg-name" {
  description = "db-sg-name"

}