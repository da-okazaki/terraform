# EC2
resource "aws_instance" "sandbox" {
  count         = 2
  ami           = "ami-785c491f" # Ubuntu 16.04 LTS official ami
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a7420c0bcef8906e"

  tags = {
    Name = "${format("sandbox-%02d", count.index + 1)}"
  }
}