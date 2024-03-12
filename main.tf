resource "null_resource" "example" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "sleep 6000 && echo Null Resource is being created"
  }
 
  provisioner "local-exec" {
    when    = destroy
    command = "echo Null Resource is being destroyed"
  }
}
