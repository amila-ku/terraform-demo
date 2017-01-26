
/*aws provider*/
provider "aws" {
    access_key = "${var.access_key}"
    secret_key  = "${var.secret_key}"
    region = "${var.region}"
}

/* aws instance config */
resource "aws_instance" "test_server1" {
    ami = "set ami name here"
    instance_type = "t2.large"
    tags {
	Name = "test-appeng-server-demo"
        apptype = "demoapp"
        appdetails = "test2"
        environment = "test1"
        team = "appeng"
        
    }
    key_name = "your aws key name"

    # Our Security group to allow HTTP and SSH access
    vpc_security_group_ids = ["sg-xxxxx"]

    # We're going to launch into the same subnet as our ELB. In a production
    # environment it's more common to have a separate private subnet for
    # backend instances.
    subnet_id = "subnet-xxxxxx"

}

