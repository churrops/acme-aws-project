resource "aws_instance" "ec2-jenkins" {
  ami = "${data.aws_ami.jenkins-ami.id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.sg_jenkins.name}"]
  user_data = "${data.template_file.user_data.rendered}"
  associate_public_ip_address = true

  tags {
    "Name" = "${var.jenkins_name}"
  }
}
