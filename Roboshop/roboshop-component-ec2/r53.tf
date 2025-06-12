resource "aws_route53_record" "www" {
  count           = length(var.instances)
  zone_id         = var.zone_id
  name            = "${var.instances[count.index]}.${var.domain_name}" #frontend.ravada.site
  type            = "A"
  ttl             = 1
  records         = [aws_instance.Roboshop[count.index].private_ip]
  allow_overwrite = true
}