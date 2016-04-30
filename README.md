# Hello World Application using AWS

## Creating a VPC in Amazon AWS

1 - Create a VPC with a CDIR block
2 - Create a Subnet within this VPC
3 - Create an Internet Gateway and attach in your gateway
4 - Modify the Route Table of you VPC and add a target for your IGW

## Configuring instances

1 - Create a Security Group for this VPC
2 - Add Inbound types for http and ssh
3 - Install Java
```bash
sudo apt-get update
sudo apt-get install openjdk-7jdk
```
4 - Set up your ```JAVA_HOME``` environment variable
5 - Install [docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)
