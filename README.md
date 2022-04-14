# ![AWS](aws-logo.png) DynamoDB Table

[![CI](https://github.com/figurate/terraform-aws-dynamodb-table/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-dynamodb-table/actions/workflows/main.yml)

Purpose: Blueprints for templated DynamoDB tables

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attributes | Table attributes | `map(any)` | n/a | yes |
| hash\_key | Table hash key | `any` | n/a | yes |
| name | DynamoDB table name | `any` | n/a | yes |
| range\_key | Table range key | `any` | `null` | no |

## Outputs

No output.

