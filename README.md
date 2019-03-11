# s3-ftp-server
Use S3 as FTP server. Not serverless.

0. Change username / password inside ftp-server.yaml file
1. `chmod u+x ./ftp.sh`
2. `./ftp.sh create`

**Note:** Bootstrap userdata runs only once when the ec2 machine is deployed. Also please make sure to whitelist IP addresses and blacklist everything else.
