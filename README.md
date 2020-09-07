# ![AWS](aws-logo.png) DynamoDB Table

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

## Outputs

No output.

