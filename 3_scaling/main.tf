resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}

resource "aws_instance" "tf_ec2_instances" {
  count = 1
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  tags =     {
      Name = join("-", ["GEOS show-and-tell ", count.index + 1, "mar"])
      Tier = "test"
    }
  root_block_device {
    volume_type = "gp2"
    volume_size = 10
  }
}
