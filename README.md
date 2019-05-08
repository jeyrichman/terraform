# Provision an EC2 instance in AWS
This Terraform configuration provisions an EC2 instance in AWS.

## Details
By default, this configuration provisions Docker Nginx container in a Amazon Base Image AMI (with ID ami-01e24be29428c15b2) with type t2.micro in the us-west-2 region.
The AMI ID, region, key name, path to id_rsa and name of id_rsa and type can all be set as variables.
You can also set the name variable to determine the value set for the Name tag.

Note that you need to set your local environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY.


##To Apply changes
```
terraform init
```
```
terraform apply
```
