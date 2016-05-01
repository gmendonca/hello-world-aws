# Hello World Application using AWS

## Creating a VPC in Amazon AWS

1 - Create a VPC with a CDIR block<br />
2 - Create a Subnet within this VPC<br />
3 - Create an Internet Gateway and attach in your gateway<br />
4 - Modify the Route Table of you VPC and add a target for your IGW<br />

## Configuring instances

1 - Create a Security Group for this VPC<br />
2 - Add Inbound types for http and ssh<br />
3 - Install [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/)<br />
4 - Install [Docker Compose](https://docs.docker.com/compose/install/)
5 - Clone this repository
```bash
$ git clone https://github.com/gmendonca/hello-world-aws.git
```
6 - Run the WebApp
```bash
$ docker-compose up
```


## Extra - Run Application Without Docker

1 - Install Java
```bash
$ sudo apt-get update
$ sudo apt-get install openjdk-7jdk
```
2 - Set up your ```JAVA_HOME``` environment variable<br />
3 - Install [Leiningen](https://github.com/technomancy/leiningen) (Because I'm using Clojure for the WebApp)<br />
4 - Clone this repository
```bash
$ git clone https://github.com/gmendonca/hello-world-aws.git
```
5 - Run the WebApp:
```bash
$ lein run
```
