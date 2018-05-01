output "jenkins_public_dns" {
  value = "[ ${aws_instance.ec2-jenkins.public_dns} ]"
}
