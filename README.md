# Automation_Project

## Assignment Description
This assignment has 3 Tasks covering different aspects of the DEVOPS role.
Below task details are taken exactly (copy, pasted) from upgrad's assignment description. 

### Task 1: - 
Task 1 has below objectives. 

1. Need to create a role that allows S3 services to the EC2 instance. 
2. Create a security group and set inbound rules so that it can be accessed via SSH, and webserver on that EC2 can be accessed via port 80 and 443/ 
3. Launch the EC2 instance and attached the created security group and role.
4. Create an S3 bucket that can be accessed by the EC2 instance. 

### Task 2: - 
Task 2 has below objectives. 
1. Need to create a script that can setup the environment for EC2. 
2. The script will install apache2 package. 
3. The apache2 webserver generated logs has to be compressed and uploaded to the S3 bucket. This is the reason we created a role for EC2 instance so that it can access the S3 bucket. 
4. This script has to be hosted on GitHub.  

### Task 3: - 
Task 3 has below objectives. 

1. It would be helpful to know that the script created on task 2 is run automatically rather than a manual action. So we need to modify the script that sets cron-file that runs daily. 
2. Also we need to append log whenever the script is run to the inventory.html file. The file is hosted on webserver, so by accessing the webserver the status of script would be known.  


##### Author Name: Syed Bilal Afzal Ashraf
