#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo aws s3 cp s3://prod-acs730-project-group5/images/aman.jpg /var/www/html/
sudo aws s3 cp s3://prod-acs730-project-group5/images/amish.jpg /var/www/html/




echo "
    <h1>
    <table border="5" bordercolor="grey" align="center">
    <tr>
        <th colspan="3">Group7</th> 
        
    </tr>
    <tr>
    <th colspan="3">Group members:Darshil, Harsh, Bishal</th> 
    </tr>
    </h1>
    <h1>Welcome to Aman Dhals ACS730 ${prefix}! My private IP is $myip in ${env} environment. Built by Terraform!</h1>
    <tr>
        <th>image1</th>
        <th>image2</th>
    </tr>
    <tr>
        <td><img src="aman.jpg" alt="" border=3 height=200 width=300></img></th>
         <td>><img src="amish.jpg" alt="" border=3 height=200 width=300></img></th>
    </tr>
    <tr>
       
      
    </tr>
    </table>">  /var/www/html/index.html

sudo systemctl start httpd
sudo systemctl enable httpd