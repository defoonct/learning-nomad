job "greeting" {
  datacenters = ["dc1"]

  group "greeting" {
    count = 1

    network {
      port "http" {
        static = "8080"
      }
    }

    task "greeting" {
      driver = "docker"

      config {
        image = "hashicorp/http-echo:${version}"
        ports = ["http"]
        args = [
          "-listen",
          ":8080",
          "-text",
          "${greeting}",
        ]
      }
    }
  }
}
