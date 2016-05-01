# Hello World Application using AWS

## Creating a VPC for production in Amazon AWS

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
3 - Select created Subnet<br />
4 - Select Health Check for TCP Ping Protocol on port 8000<br />
5 - Add EC2 instances that have the running web application<br />

## Configuring Nomad instance

1 - Create another VPC for the Nomad instance<br />
2 - Create a Subnet within this VPC<br />
3 - Create a IGW attach to the VPC and add to the Route Table<br />
4 - Create a Security Group for this VPC and add port 4647 for Nomad<br />
5 - Edit the Security Group for the Client instances and add port 4647<br />
6 - Create another instance to in this new VPC-Subnett<br />
7 - Install [Nomad](https://www.nomadproject.io/docs/install/index.html):
```bash
$ wget https://releases.hashicorp.com/nomad/0.3.2/nomad_0.3.2_linux_amd64.zip
$ unzip nomad_0.3.2_linux_amd64.zip
$ sudo mv nomad /usr/local/bin
```
8 - Run the server on each instance instance:
```bash
# Server
$ sudo nomad agent -config nomad/server.hcl
# Client 1
$ sudo nomad agent -config client1.hcl
# Client 2
$ sudo nomad agent -config client2.hcl
```
9 - On the server you can the status of your cluster:
```bash
$ nomad node-status -address=http://192.168.0.249:4646
```
