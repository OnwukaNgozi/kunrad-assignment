** This is a README file for the S3 bucket, object upload, viewing through cloudfront, routing through AWS route53 and obtaining our domain name certificate.**

Prerequisites:
1. AWS Account
2. Domain name registered in Route 53
3. Terraform installed on your local machine
4. VScode and/or gitbash

Steps:
File step is file structure because the files are arranged in modules.
You can create the folders on the desktop or where the want your file to be.

First is the main folder, containing two folders named provider and modules.
Inside the provider folder is the provider.tf file.
In the modules folder, we have:
1. s3 bucket folder, containing a main.tf file and and output.tf file
2. cloudfront folder, containing its main.tf file and and output.tf file
3. route53 folder, containing its main.tf file and and output.tf file

   


![s3 bucket](<aws s3-1.png>)


![cert](<cert evidence-1.png>)


![apply](<Apply done-1.png>)

