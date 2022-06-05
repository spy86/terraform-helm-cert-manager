module "cert-manager" {
  source  = "spy86/cert-manager/helm"
  version = "1.0.1"
  cluster_name = "examplecakscluster"
}