provider "eksctl" {

}

resource "eksctl_cluster" "primary" {
  eksctl_bin = "eksctl-0.20.0"
  name       = "primary1"
  region     = var.region
  spec       = <<-EOS
  nodeGroups:
  - name: ng1
    instanceType: m5.large
    desiredCapacity: 1
  EOS
}

module "bootstrap" {
  source = "giturl.git?ref=0.0.1"

  variables = var.bootstrap
}
