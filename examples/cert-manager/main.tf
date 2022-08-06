module "cert-manager" {
  source  = "spy86/cert-manager/helm"
  version = "1.0.2"
  cluster_name = "examplecakscluster"
}