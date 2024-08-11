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

| Name                                                                                                                         | Type     |
| ---------------------------------------------------------------------------------------------------------------------------- | -------- |
| [yandex_vpc_network.vpc_dev](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network)  | resource |
| [yandex_vpc_subnet.subnet_dev](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name                                                      | Description  | Type     | Default | Required |
| --------------------------------------------------------- | ------------ | -------- | ------- | :------: |
| <a name="input_cidr"></a> [cidr](#input_cidr)             | CIDR         | `string` | n/a     |   yes    |
| <a name="input_env_name"></a> [env_name](#input_env_name) | env_name     | `string` | n/a     |   yes    |
| <a name="input_zone"></a> [zone](#input_zone)             | default zone | `string` | n/a     |   yes    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_network_id"></a> [network_id](#output_network_id) | n/a         |
| <a name="output_subnet_id"></a> [subnet_id](#output_subnet_id)    | n/a         |
