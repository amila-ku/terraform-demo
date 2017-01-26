#demo2

This was used for terraform basics demo, user has to create ami-id subnet and vpc manually and set values in variables.tf file

Execution:

```
terraform plan
```
terraform apply 

To destroy resources:

```
terraform destroy


Only to change one resource: 

```
terraform apply -target=aws_instance.test_server2
