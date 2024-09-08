resource "aws_route53_record" "ses_verification_record" {
  zone_id = var.route53_zone_id
  name    = "_amazonses.${var.ses_domain}"
  type    = "TXT"
  ttl     = var.domain_identity_ttl
  records = [aws_ses_domain_identity.domain_identity.verification_token]
}

resource "aws_route53_record" "dkim_records" {
  count   = 3
  zone_id = var.route53_zone_id
  name    = "${aws_ses_domain_dkim.dkim.dkim_tokens[count.index]}._domainkey"
  type    = "CNAME"
  ttl     = var.domain_identity_ttl
  records = ["${aws_ses_domain_dkim.dkim.dkim_tokens[count.index]}.dkim.amazonses.com"]
}

resource "aws_route53_record" "mail_from_mx" {
  zone_id = var.route53_zone_id
  name    = aws_ses_domain_mail_from.mail_from.domain
  type    = "MX"
  ttl     = var.mail_from_mx_ttl
  records = ["10 feedback-smtp.${data.aws_region.current.name}.amazonses.com"]
}

resource "aws_route53_record" "mail_from_txt" {
  zone_id = var.route53_zone_id
  name    = aws_ses_domain_mail_from.mail_from.domain
  type    = "TXT"
  ttl     = var.mail_from_txt_ttl
  records = ["v=spf1 include:amazonses.com -all"]
}