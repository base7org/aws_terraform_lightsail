resource "awslightsail_lb" "site_lb" {
  name              = "${var.site_name}-loadbalancer"
  health_check_path = "/healthcheck"
  instance_port     = "80"

}

resource "awslightsail_lb_attachment" "site_lb_attach_1" {
  load_balancer_name = awslightsail_lb.site_lb.name
  instance_name      = awslightsail_instance.site_instance_1.name
}

resource "awslightsail_lb_attachment" "site_lb_attach_2" {
  load_balancer_name = awslightsail_lb.site_lb.name
  instance_name      = awslightsail_instance.site_instance_2.name
}


resource "awslightsail_domain_entry" "site_lb_domain" {
  domain_name = awslightsail_domain.site_domain.domain_name
  name        = var.site_subdomain
  type        = "A"
  target      = awslightsail_lb.site_lb.dns_name
  is_alias    = "true"
}


