variable "version_chart" {
  type        = string
  description = "Version du chart Helm ArgoCD à déployer"
}
variable "depot" {
  type        = string
  description = "URL HTTPS du dépôt GitHub surveillé par ArgoCD"
}
