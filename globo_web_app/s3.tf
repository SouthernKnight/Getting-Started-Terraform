module "s3" {
  source = "./modules/globo-web-app-s3"

  bucket_name = local.s3_bucket_name
  elb_svc_acct_arn = data.aws_elb_service_account.root.arn
  common_tags = local.common_tags
}

resource "aws_s3_bucket_object" "website_content" {
  for_each = {
    website = "/website/index.html"
    logo    = "/website/Globo_logo_Vert.png"
  }

  bucket = module.s3.web_bucket.id
  key    = each.value
  source = ".${each.value}"

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-website-content-${each.key}"
  })
}
