provider "helm" {
  kubernetes = {
    host                   = module.cluster.endpoint
    client_certificate     = module.cluster.client_certificate
    client_key             = module.cluster.client_key
    cluster_ca_certificate = module.cluster.cluster_ca_certificate
  }
}
module "cluster" {
  source = "./modules/cluster"
  nom    = var.nom_cluster
}
module "argocd" {
  source        = "./modules/argocd"
  version_chart = var.version_argocd
  depot         = var.depot
}
moved {
  from = kind_cluster.this
  to   = module.cluster.kind_cluster.this
}
moved {
  from = helm_release.argocd
  to   = module.argocd.helm_release.argocd
}
