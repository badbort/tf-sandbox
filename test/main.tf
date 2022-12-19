variable "blah" {
  type = string
  default = "test8"
}

resource "null_resource" "codacy_project_token" {

  triggers = {
    blah = var.blah
  }

  provisioner "local-exec" {
    interpreter = ["pwsh", "-Command"]
    when        = create
    command     = <<EOF

Write-Output "Hello World. Lets go to sleep"
Get-Date
Start-Sleep -Seconds 120
Get-Date
Write-Output "Fin"


      EOF
  }
}