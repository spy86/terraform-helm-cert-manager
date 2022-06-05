<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.nginx_ingress](https://registry.terraform.io/providers/hashicorp/helm/2.5.1/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_manager_chart"></a> [cert\_manager\_chart](#input\_cert\_manager\_chart) | Chart name to be installed. The chart name can be local path, a URL to a chart, or the name of the chart if repository is specified. It is also possible to use the <repository>/<chart> format here if you are running Terraform on a system that the repository has been added to with helm repo add but this is not recommended. | `string` | `"jetstack/cert-manager"` | no |
| <a name="input_cert_manager_create_namespace"></a> [cert\_manager\_create\_namespace](#input\_cert\_manager\_create\_namespace) | Create the namespace if it does not yet exist. Defaults to false. | `bool` | `true` | no |
| <a name="input_cert_manager_name"></a> [cert\_manager\_name](#input\_cert\_manager\_name) | Release name. | `string` | `"certmgr"` | no |
| <a name="input_cert_manager_namespace"></a> [cert\_manager\_namespace](#input\_cert\_manager\_namespace) | The namespace to install the release into. Defaults to default. | `string` | `"ingress-nginx"` | no |
| <a name="input_cert_manager_repository"></a> [cert\_manager\_repository](#input\_cert\_manager\_repository) | Repository URL where to locate the requested chart. | `string` | `"https://charts.jetstack.io"` | no |
| <a name="input_cert_manager_version"></a> [cert\_manager\_version](#input\_cert\_manager\_version) | Specify the exact chart version to install. If this is not specified, the latest version is installed. | `string` | `"v1.0.8"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_installCRDs"></a> [installCRDs](#input\_installCRDs) | The number of replicas of CRD resources. | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->