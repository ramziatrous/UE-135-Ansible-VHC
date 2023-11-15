resource "aws_instance" "test" {
  count                  = length(var.server_names)
  ami                    = var.instance_ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name               = var.key


  tags = {
    Name = var.server_names[count.index]
  }
  
}
