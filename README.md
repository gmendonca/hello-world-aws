# Hello World Application using AWS

## Creating a VPC in Amazon AWS

1 - Create a VPC with a CDIR block<br />
2 - Create a Subnet within this VPC<br />
3 - Create an Internet Gateway and attach in your gateway<br />
4 - Modify the Route Table of you VPC and add a target for your IGW<br />

## Configuring instances

1 - Create a Security Group for this VPC<br />
2 - Add Inbound types for http and ssh<br />
3 - Install Java
```bash
sudo apt-get update
sudo apt-get install openjdk-7jdk
```
4 - Set up your ```JAVA_HOME``` environment variable<br />
5 - Install [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)<br />
6 - Install [Leiningen](https://github.com/technomancy/leiningen)(Because I'm using Clojure for the WebApp)<br />
