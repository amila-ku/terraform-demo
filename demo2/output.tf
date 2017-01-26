output "test_server1.0.ip" {
  value = "${aws_instance.test_server1.0.private_ip}"
}

output "test_server2.0.ip" {
  value = "${aws_instance.test_server2.0.private_ip}"
}
