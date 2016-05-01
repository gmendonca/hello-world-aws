# Hello World Application using AWS

## Creating a VPC in Amazon AWS

1 - Create a VPC with a CDIR block<br />
2 - Create a Subnet within this VPC<br />
3 - Create an Internet Gateway and attach in your gateway<br />
4 - Modify the Route Table of you VPC and add a target for your IGW<br />

## Configuring instances

1 - Create a Security Group for this VPC<br />
2 - Add Inbound types for ports 8000 and 9000 as a custom TCP Rule<br />
3 - Install Java
```bash
$ sudo apt-get update
$ sudo apt-get install openjdk-7jdk
```
4 - Set up your ```JAVA_HOME``` environment variable<br />
5 - Install [Leiningen](https://github.com/technomancy/leiningen) (Because I'm using Clojure for the WebApp)<br />
6 - Install [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)<br />
7 - Install [Docker Compose](https://docs.docker.com/compose/install/)<br />
8 - Clone this repository
```bash
$ git clone https://github.com/gmendonca/hello-world-aws.git
```
9 - Compile the code:
```bash
$ cd hello-world-aws/
$ lein uberjar
```
9 - Run the WebApp
```bash
$ sudo docker-compose up
```

## Configuring Load Balancer

1 - Add Inbound types for port 9000 as a custom TCP Rule to the existing Security Group<br />
2 - Assign Load Balancer to the created VPC<br />
3 - Select created Subnet
4 - Select Health Check for TCP Ping Protocol on port 8000
5 - Add EC2 instance that have the running web application.
