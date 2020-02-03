#This repo is a ami builder with packer 

- clone repository
- run change the permissions for execute and run ./check_last_centos7-ami.sh as the bellow 
  ```bash
   chmod +x check_last_centos7-ami.sh
   ./check_last_centos7-ami.sh eu-central-1                                                                     
   {
       "Images": [
           {
               "Architecture": "x86_64",
               "CreationDate": "2019-01-30T23:43:46.000Z",
               "ImageId": "ami-04cf43aca3e6f3de3",
               "ImageLocation": "aws-marketplace/CentOS Linux 7 x86_64 HVM EBS ENA 1901_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-05713873c6794f575.4",
               "ImageType": "machine",
               "Public": true,
               "OwnerId": "679593333241",
               "ProductCodes": [
                   {
                       "ProductCodeId": "aw0evgkw8e5c1q413zgy5pjce",
                       "ProductCodeType": "marketplace"
                   }
               ],
               "State": "available",
               "BlockDeviceMappings": [
                   {
                       "DeviceName": "/dev/sda1",
                       "Ebs": {
                           "DeleteOnTermination": false,
                           "SnapshotId": "snap-05c6dd0b90e5123e4",
                           "VolumeSize": 8,
                           "VolumeType": "gp2",
                           "Encrypted": false
                       }
                   }
               ],
               "Description": "CentOS Linux 7 x86_64 HVM EBS ENA 1901_01",
               "EnaSupport": true,
               "Hypervisor": "xen",
               "ImageOwnerAlias": "aws-marketplace",
               "Name": "CentOS Linux 7 x86_64 HVM EBS ENA 1901_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-05713873c6794f575.4",
               "RootDeviceName": "/dev/sda1",
               "RootDeviceType": "ebs",
               "SriovNetSupport": "simple",
               "VirtualizationType": "hvm"
           }
       ]
   }

  ```
- fill the variables on centos7.json as you which
- run 'packer validate centos7.json'
  ```bash
   packer validate centos7.json                                                                                          
   Template validated successfully.
  ```
- run packer build
  ```bash
  packer build centos7.json  
  ```
- in the end it should give you the ami id you need 