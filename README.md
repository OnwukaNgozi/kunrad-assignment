** This is a README file for the S3 bucket, object upload, viewing through cloudfront, routing through AWS route53 and obtaining our domain name certificate.**

Prerequisites:
1. AWS Account
2. Domain name registered in Route 53
3. Terraform installed on your local machine
4. VScode and/or gitbash

Steps:
File step is file structure because the files are arranged in modules.
You can create the folders on the desktop or where the want your file to be.

1. First is the main folder(let's name it terraform project), containing two folders named provider and modules.
    Inside the provider folder is the provider.tf file.
    In the modules folder, we have:
      a. s3 bucket folder, containing a s3.tf file and s3output.tf file.
     This s3.tf file contains your s3 bucket creation and object upload configurations, while s3output.tf file outputs the result of your s3.tf.
   
      b. cloudfront folder, containing its cf.tf file and cfoutput.tf file
     This cf.tf file contains your cloudfront ploicy and s3 bucket routing configurations while cfoutput.tf file outputs the result of your cf.tf.
   
      c. route53 folder, containing its r53.tf file.
     This r53.tf file contains your certificate request and routing the domain name to route53 configurations.
   
2. Then, inside this erraform project folder, we have main.tf and output.tf file
   This main.tf file connects all the three modules, while output.tf file contains an output declaration of any file we want on the terminal.


On your terminal, configure an aws account by running aws configure and following the prompt.

Then, run "terraform init" to initialize the terraform and connect it to a service provider (code in my provider.ft file)

Runn "terraform plan' to see the actions to be taken.

Run 'terraform apply' to effect the actions already staged.


Here 
![s3 bucket](<aws s3-1.png>)


![cert](<cert evidence-1.png>)


![apply](<Apply done-1.png>)

