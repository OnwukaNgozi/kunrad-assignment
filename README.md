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
      a. s3 bucket folder, containing a main.tf file and and output.tf file.
     This main.tf file contains your s3 bucket creation and object upload configurations and output.tf file outputs the result of your main.tf.
   
      b. cloudfront folder, containing its main.tf file and and output.tf file
     This main.tf file contains your cloudfront ploicy and s3 bucket routing configurations and output.tf file outputs the result of your main.tf.
   
      c. route53 folder, containing its main.tf file and and output.tf file
     This main.tf file contains your certificate request and routing the domain name to route53 configurations and output.tf file outputs the result of your main.tf.
   
3. Then, inside this erraform project folder, we have main.tf and output.tf file


On your terminal, configure an aws account by running aws configure and following the prompt.
Then, running "terraform init" to initialize the terraform and connects it to a service provider (code in my provider.ft file)

Running my 


![s3 bucket](<aws s3-1.png>)


![cert](<cert evidence-1.png>)


![apply](<Apply done-1.png>)

