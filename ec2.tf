/*resource "aws_instance" "myec2" {
   ami = "ami-08d4ac5b634553e16"
   instance_type = "t2.micro"
}*/


/*variable "lb_name" {
  type = list
  default = ["prod-lb", "dev-lb", "stage-lb"]
}*/
/*resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  path = "/system/"
}*/

resource "aws_instance" "myec2" {
   ami = "ami-08d4ac5b634553e16"
   instance_type = "t2.micro"
   key_name = "c32"
   vpc_security_group_ids = ["sg-0b78f0b1c826627de"]
   tags = {
     Name = "manual"
   }
}