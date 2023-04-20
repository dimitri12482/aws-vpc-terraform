# AWS VPC with Subnet using Terraform

This project focus on a designing virtual private cloud that contain private, public subnet and route table to connected to the internet gateaway in AWS.


![](images/aws-vpc.jpg)

![](images/image1.png)

## Pre-requisites

* Terraform installed locally
* AWS CLI installed locally
* AWS account and keypair created in AWS
* Preferred IDE (I used VS Code)
* AWS region: `us-east-1`

## Step 1

Create a AWS account and then go to IAM to 
download a cvs excel file with your 
access key and sercet password.

## Step 2

Create a directory on to your local computer and 
open up VS Code and then create a terraform
file called `vpc.tf` and `provider.tf`. 

## Step 3

Login to the AWS Account through the local command line and 
enter in your access key id and secret password 
