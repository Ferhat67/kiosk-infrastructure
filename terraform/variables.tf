variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
}

variable "my_ip" {
  description = "Your IP to allow SSH access"
  type        = string
}
