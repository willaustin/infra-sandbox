variable "install_datadog" {
  type    = bool
  default = true
}

variable "bootstrap" {
  type = map({
    datadog = {
      replicas = number
    }
    lacework = {
      myvar = string
    }
  })
}
