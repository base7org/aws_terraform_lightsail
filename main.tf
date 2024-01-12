terraform {
  required_providers {
	awslightsail = {
      source  = "deyoungtech/awslightsail"
    }
  }
}

provider "awslightsail" {
  region  = var.site_region
}

resource "awslightsail_key_pair" "site_key_pair" {
  name = var.keypair
}

data "awslightsail_availability_zones" "site_all" {}