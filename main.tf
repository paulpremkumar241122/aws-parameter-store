resource "aws_ssm_parameter" "Params" {
  count = length(var.Params)
  name  = var.Params[count.index].name
  type  = var.Params[count.index].type
  value = var.Params[count.index].value
}

variable "Params" {
  default = [
    {name = "demo1", value = "demo1", type = "string" },
    {name = "demo2", value = "demo2", type = "string" }
  ]
}