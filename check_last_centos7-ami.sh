#!/bin/bash

#last instance 

AMI=$(aws ec2 describe-images \
  --owners 679593333241 \
  --filters \
      Name=name,Values='CentOS Linux 7 x86_64 HVM EBS*' \
      Name=architecture,Values=x86_64 \
      Name=root-device-type,Values=ebs \
  --query 'sort_by(Images, &Name)[-1].ImageId' \
  --output text)

aws ec2 describe-images --image-ids ${AMI} --region $1
