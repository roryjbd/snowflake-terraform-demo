terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }

    backend "s3" {
        bucket = "rd-tf-state-310825"
        key    = "terraform.tfstate"
        region = "us-east-1"
        use_lockfile = true
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