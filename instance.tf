# Instance 1

resource "awslightsail_instance" "site_instance_1" {
  name              = "${var.site_name}-1"
  availability_zone = "${var.site_region}a"
  blueprint_id      = var.site_blueprint
  bundle_id         = var.site_bundle
  key_pair_name     = awslightsail_key_pair.site_key_pair.name

  user_data = <<-EOL
  #!/bin/bash -xe

  yum update -y
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd
  echo 'Has anyone really been far even as decided to use even go want to do look more like?' >> /var/www/html/index.html
  EOL
  
}

resource "awslightsail_static_ip" "site_ip_1" {
  name = "${awslightsail_instance.site_instance_1.name}-ip"
}

resource "awslightsail_static_ip_attachment" "site_ip_attach" {
  static_ip_name = awslightsail_static_ip.site_ip_1.id
  instance_name  = awslightsail_instance.site_instance_1.id
}

# Instance 2

resource "awslightsail_instance" "site_instance_2" {
  name              = "${var.site_name}-2"
  availability_zone = "${var.site_region}a"
  blueprint_id      = var.site_blueprint
  bundle_id         = var.site_bundle
  key_pair_name     = awslightsail_key_pair.site_key_pair.name

  user_data = <<-EOL
  #!/bin/bash -xe

  yum update -y
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd
  echo 'Has anyone really been far even as decided to use even go want to do look more like?' >> /var/www/html/index.html
  EOL
  
}

resource "awslightsail_static_ip" "site_ip_2" {
  name = "${awslightsail_instance.site_instance_2.name}-ip"
}

resource "awslightsail_static_ip_attachment" "site_ip_attach_2" {
  static_ip_name = awslightsail_static_ip.site_ip_2.id
  instance_name  = awslightsail_instance.site_instance_2.id
}