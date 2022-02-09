# terraform k8s
provider "kubernetes" {
  # kubeconfig =
}

resource "kubernetes_deployment" "the_app" {

  label = {
    # module.eksctl.mycluster.blah
  }
}
