resource "aws_ecr_repository" "victor_ops" {
  name = "viktor_ops_repository"
  image_tag_mutability = "MUTABLE"
  
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    env = "dev"
    name = "Viktor Ops Registry"
  }
}