resource "helm_release" "nginx_ingress" {
    name             = "${var.cert_manager_name}"
    repository       = "${var.cert_manager_repository}"
    chart            = "${var.cert_manager_chart}"
    version          = "${var.cert_manager_version}"
    namespace        = "${var.cert_manager_namespace}"
    create_namespace = "${var.cert_manager_create_namespace}"

  set {
    name  = "installCRDs"
    value = "${var.installCRDs}"
  }

  lifecycle {
    ignore_changes = [
      set,
    ]
  }
}