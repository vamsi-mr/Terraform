resource "aws_route53_record" "www" {
  #count   = 4
  for_each        = aws_instance.roboshop
  zone_id         = var.zone_id
  name            = "${each.key}.${var.domain_name}" #mongodb.ravada.site
  type            = "A"
  ttl             = 1
  records         = [each.value.private_ip]
  allow_overwrite = true
}