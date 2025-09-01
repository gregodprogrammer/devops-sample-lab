provider "docker" {}

resource "docker_image" "node_app" {
  name = "az400-node-app"
  build {
    context    = "${path.module}/../../app"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "node_app" {
  name  = "az400-node-app"
  image = docker_image.node_app.latest
  ports {
    internal = 3000
    external = 3000
  }
}
