/*
* # Simple example for Snowflake Warehouse module
*/

module "terraform_snowflake_warehouse" {
  source = "../../"

  snowflake_private_key = var.snowflake_private_key

  name = "minimal_warehouse"
}


provider "snowflake" {
  organization_name = "xodjopc"
  account_name      = "jtc04659"
  user              = "SKANKIPATI"
  role              = "ACCOUNTADMIN"
  authenticator     = "SNOWFLAKE_JWT"
  private_key       = var.snowflake_private_key
}