data "template_file" "greeting" {
  template = file("${path.cwd}/assets/jobs/templates/http-echo.hcl.tpl")

  vars = {
    greeting = var.greeting
    version  = var.ver
  }
}

resource "nomad_job" "greeting" {
  jobspec = data.template_file.greeting.rendered
}
