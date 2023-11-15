
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"                # Das gesamte Internet
    gateway_id = aws_internet_gateway.gw.id # Link zu unserem erstellten Internet Gateway
  }

  tags = {
    Name = "TF Route Table"
  }
}

resource "aws_route_table_association" "subnet_route" {
 
  subnet_id = aws_subnet.my_subnet.id

  route_table_id = aws_route_table.rt.id
}