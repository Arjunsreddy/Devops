module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "terraform_instance"
  ami = "ami-091a58610910a87a9"

  instance_type          = "t2.micro"
  key_name               = "keypair-july"
  monitoring             = true
  vpc_security_group_ids = ["sg-0e00e0d6e94447bc4"]
  subnet_id              = "subnet-0f9a38f96ff4c1f97"
  associate_public_ip_address  = "true"
  }