
/*aws provider*/
provider "aws" {
    region = "${var.region}"
}

/* aws instance config */
resource "aws_instance" "test_server1" {
    count = 1
    ami = "${var.pwa_ami}"
    instance_type = "${var.instancetype}"
    tags {
	Name = "${var.region_s}-test-ae-${var.env}-${format("%03d", count.index + 1)}"
        apptype = "${var.apptype}"
        appdetails = "${var.app_details}"
        environment = "${var.env}"
        team = "appeng"
        
    }
    key_name = "${var.pwa_access_key}"
    subnet_id = "${element(split(",", var.app_subnets),count.index)}" 
    vpc_security_group_ids = ["${aws_security_group.app_sg.id}"]
}

/* aws instance config */
resource "aws_instance" "test_server2" {
    count = 1
    ami = "${var.pwa_ami}"
    instance_type = "${var.instancetype}"
    tags {
        Name = "${var.region_s}-test-ae-${var.env}-${format("%03d", count.index + 2)}"
        apptype = "${var.apptype}"
        appdetails = "${var.app_details}"
        environment = "${var.env}"
        team = "appeng"

    }
    key_name = "${var.pwa_access_key}"
    subnet_id = "${element(split(",", var.app_subnets),count.index)}"
    vpc_security_group_ids = ["${var.pwa_security_group}"]
}
