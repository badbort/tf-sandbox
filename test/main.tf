# Dummy stuff

resource "null_resource" "codacy_project_token" {

  provisioner "local-exec" {
    when        = create
          command = <<EOF

Write-Output "Hello World. Lets go to sleep"
Get-Date
Start-Sleep -Seconds 120
Get-Date
Write-Output "Fin"

      EOF
    interpreter = ["pwsh", "-Command"]
  }
}
