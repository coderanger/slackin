resource "aws_ecr_repository" "slackin" {
  name = "slackin"
}

output "slackin-repo" {
  value = "${aws_ecr_repository.slackin.repository_url}"
}
