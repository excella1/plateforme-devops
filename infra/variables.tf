variable "nom_cluster" {
  type        = string
  description = "Nom du cluster Kind"
}
variable "version_argocd" {
  type        = string
  description = "Version du chart Helm ArgoCD"
}
variable "depot" {
  type        = string
  description = "URL HTTPS du dépôt GitHub surveillé par ArgoCD"
}
