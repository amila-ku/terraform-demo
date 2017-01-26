variable "region"     { 
  description = "AWS region to host your network"
  default     = "us-west-2" 
}

variable "av_zone"	{
  description = "availability zones to be used"
  default     =  {
    zone_a = "us-west-2b"
    zone_b = "us-west-2c"
  }
}

#set the vpc id the instance is to be placed
variable "vpc_details" {
  default = "vpc-xxxxx"
}



#set security group name
variable "pwa_security_group" {
  description = "security group"
  default = "sg-xxxxx"
}


#set subnet where you want the instance to be
variable "subnets_tel"  {
  description = "subnets to be used"
  default = {
     "0"  = "subnet-xxxxx"
     "1"  = "subnet-xxxxx"
  }
}

variable "env" {
  default = "dev"
}

variable "instancetype" {
  description = "set instance type"
  default = "t2.small"
}

variable "apptype" {
  description = "application type"
  default = "test"
}

variable "app_details" {
  description = "application details"
  default = "test cluster"
}


variable "pwa_ami" {
  default = "ami-650af705"
}

variable "prv_key" {
  default = "/home/terraform/.ssh/access.pem"
}

variable "pwa_access_key" {
  default = "team_access"
}

variable "app_subnets" {
  default = "subnet-xxxxxx,subnet-xxxxx"
}

variable "region_s" {
  default = "usw2"
}




