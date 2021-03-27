Download Terraform on the system
Extract the zip file
Put it inside Program Files folder in C Drive
Set path in System Variables

Link : https://www.terraform.io/downloads.html


Create an user with full access on aws

Download the user credentials file on local system

Configure the aws on the terminal
```
PS D:\Terraform> aws configure
AWS Access Key ID [****************AYOQ]: 
AWS Secret Access Key [****************N78O]: 
Default region name [None]: 
Default output format [None]: 
```

### Some common Commands
```
terraform init
```
Initializes the Configuration

Aws Provider Plugin is downloaded
```
terraform validate
```
Validates the Syntax and File Configs
```
terraform plan
terraform plan -out m3.tfplan
```
Looks at config files and also loads variables from tfvars file

takes a look at existing env , looks at what you want to do in your config & figures out what it needs to do to make reality match whats in your config.
```
terraform apply
terraform apply "m3.tfplan"
```
Applies/Executes the plan
```
terraform destroy
```
Looks at the state file and what resources were created & destroys all of those.
