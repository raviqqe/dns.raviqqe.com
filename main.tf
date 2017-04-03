variable "record_ttl" {
  default = "300"
}

variable "nasicus_ip" {
  default = "153.126.181.78"
}

data "aws_route53_zone" "main" {
  name = "raviqqe.com."
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_record" "self" {
  zone_id = "${data.aws_route53_zone.main.zone_id}"
  name    = "raviqqe.com"
  type    = "A"
  ttl     = "${var.record_ttl}"
  records = ["${var.nasicus_ip}"]
}

resource "aws_route53_record" "www" {
  zone_id = "${data.aws_route53_zone.main.zone_id}"
  name    = "www.raviqqe.com"
  type    = "A"
  ttl     = "${var.record_ttl}"
  records = ["${var.nasicus_ip}"]
}

resource "aws_route53_record" "ftp" {
  zone_id = "${data.aws_route53_zone.main.zone_id}"
  name    = "ftp.raviqqe.com"
  type    = "A"
  ttl     = "${var.record_ttl}"
  records = ["${var.nasicus_ip}"]
}

resource "aws_route53_record" "git" {
  zone_id = "${data.aws_route53_zone.main.zone_id}"
  name    = "git.raviqqe.com"
  type    = "A"
  ttl     = "${var.record_ttl}"
  records = ["${var.nasicus_ip}"]
}

resource "aws_route53_record" "nasicus" {
  zone_id = "${data.aws_route53_zone.main.zone_id}"
  name    = "nasicus.raviqqe.com"
  type    = "A"
  ttl     = "${var.record_ttl}"
  records = ["${var.nasicus_ip}"]
}
