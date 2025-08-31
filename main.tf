terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
    organization_name = "TEDYZXG"
    account_name      = "INFINITYWORKSPARTNER"
    user = "DEPLOYER"
}

resource "snowflake_database" "test" {
    name = "TEST_DB"
}