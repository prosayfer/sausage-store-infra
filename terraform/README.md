<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.84.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf-yc-instance"></a> [tf-yc-instance](#module\_tf-yc-instance) | ./modules/tf-yc-instance | n/a |
| <a name="module_tf-yc-network"></a> [tf-yc-network](#module\_tf-yc-network) | ./modules/tf-yc-network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud id where resources should be created (for provider conf) | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder id where resources should be created (for provider conf) | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | A disk image to initialize this disk from | `string` | `"fd80qm01ah03dkqb14lc"` | no |
| <a name="input_instance_zone"></a> [instance\_zone](#input\_instance\_zone) | Instance availability zone | `string` | `"ru-central1-a"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the subnet to attach this interface to | `string` | `"e9bs7kl3dvlsp0ap8tfg"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->