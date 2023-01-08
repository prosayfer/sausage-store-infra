<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.84.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.default](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_network) | data source |
| [yandex_vpc_subnet.default](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_zones"></a> [network\_zones](#input\_network\_zones) | Names of available zones | `set(string)` | <pre>[<br>  "ru-central1-a",<br>  "ru-central1-b",<br>  "ru-central1-c"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_yandex_vpc_network"></a> [yandex\_vpc\_network](#output\_yandex\_vpc\_network) | VPC Network to use to other resources |
| <a name="output_yandex_vpc_subnets"></a> [yandex\_vpc\_subnets](#output\_yandex\_vpc\_subnets) | VPC Subnets to use to other resources |
<!-- END_TF_DOCS -->