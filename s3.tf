
resource "aws_s3_bucket" "statebucket" {
  bucket = "mydevopsbucket123"
  acl    = "private"

  tags = {
    Name        = "My bucket789"
    Environment = "Dev"
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
}
