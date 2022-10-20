terraform {
  required_version = ">= 1.0.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">=0.46.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3"
    }
  }
}
