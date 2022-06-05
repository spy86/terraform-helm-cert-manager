###########################
# Cert-Manager vars
###########################
variable "cluster_name" {
  description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
  type = string
}
variable "cert_manager_name" {
  description = "Release name."
  type = string
  default = "certmgr"
}
variable "cert_manager_repository" {
  description = "Repository URL where to locate the requested chart."
  type = string
  default = "https://charts.jetstack.io"
}
variable "cert_manager_chart" {
  description = "Chart name to be installed. The chart name can be local path, a URL to a chart, or the name of the chart if repository is specified. It is also possible to use the <repository>/<chart> format here if you are running Terraform on a system that the repository has been added to with helm repo add but this is not recommended."
  type = string
  default = "jetstack/cert-manager"
}
variable "cert_manager_version" {
  description = "Specify the exact chart version to install. If this is not specified, the latest version is installed."
  type = string
  default = "v1.8.0"
}
variable "cert_manager_namespace" {
  description = "The namespace to install the release into. Defaults to default."
  type = string
  default = "ingress-nginx"
}
variable "cert_manager_create_namespace" {
  description = "Create the namespace if it does not yet exist. Defaults to false."
  type = bool
  default = true
}
variable "installCRDs" {
  description = "The number of replicas of CRD resources."
  type = bool
  default = true
}