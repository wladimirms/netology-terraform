## Requirements

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >=0.13  |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_yandex"></a> [yandex](#provider_yandex) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                        | Type     |
| --------------------------------------------------------------------------------------------------------------------------- | -------- |
| [yandex_vpc_network.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet)   | resource |

## Inputs

| Name                                                                  | Description  | Type           | Default                  | Required |
| --------------------------------------------------------------------- | ------------ | -------------- | ------------------------ | :------: |
| <a name="input_default_cidr"></a> [default_cidr](#input_default_cidr) | default_cidr | `list(string)` | <pre>[<br> ""<br>]</pre> |    no    |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone) | default_zone | `string`       | `""`                     |    no    |
| <a name="input_vpc_name"></a> [vpc_name](#input_vpc_name)             | VPC name     | `string`       | `""`                     |    no    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_network_id"></a> [network_id](#output_network_id) | n/a         |
| <a name="output_subnet_id"></a> [subnet_id](#output_subnet_id)    | n/a         |
