# Overview
This module creates the infrastructure required for an SES Deployment

# Structure
- default.tf: Contains any variables that have a default set
- main.tf: Contains all resources except DNS records
- variables.tf: Contains any required variables
- data.tf: Contains data soruces
- dns.tf: Contains DNS records

<!-- BEGIN_TF_DOCS -->
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dkim_ttl"></a> [dkim\_ttl](#input\_dkim\_ttl) | TTL of DKIM records | `number` | `300` | no |
| <a name="input_domain_identity_ttl"></a> [domain\_identity\_ttl](#input\_domain\_identity\_ttl) | TTL of domain\_identity record | `number` | `300` | no |
| <a name="input_mail_from_domain"></a> [mail\_from\_domain](#input\_mail\_from\_domain) | Domain to use for mail from | `string` | n/a | yes |
| <a name="input_mail_from_mx_ttl"></a> [mail\_from\_mx\_ttl](#input\_mail\_from\_mx\_ttl) | TTL of Mail from MX record | `number` | `300` | no |
| <a name="input_mail_from_txt_ttl"></a> [mail\_from\_txt\_ttl](#input\_mail\_from\_txt\_ttl) | TTL of Mail from TXT record | `number` | `300` | no |
| <a name="input_route53_zone_id"></a> [route53\_zone\_id](#input\_route53\_zone\_id) | Route 53 zone ID | `string` | n/a | yes |
| <a name="input_ses_domain"></a> [ses\_domain](#input\_ses\_domain) | Domain to configure for SES | `string` | n/a | yes |
# Resources

| Name | Type |
|------|------|
| [aws_route53_record.dkim_records](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.mail_from_mx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.mail_from_txt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.ses_verification_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_ses_domain_dkim.dkim](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_dkim) | resource |
| [aws_ses_domain_identity.domain_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity) | resource |
| [aws_ses_domain_identity_verification.domain_verification](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity_verification) | resource |
| [aws_ses_domain_mail_from.mail_from](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_mail_from) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
# Outputs

No outputs.

<!-- END_TF_DOCS -->