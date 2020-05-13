# jenkinsDockerfile


## Overview of the project

In this project, I have created a DockerFile to create the setup of Jenkins. And later using different jobs we  are integrated with github. In real world scenario, all the code is deployed in production system and is accessible to client. Before deploying to production system, this is checked in test system and the deployed to production.
So in this project, I have shown this setup.

## Building the Dockerfile

### After downloading the Dockerfile, use the command `docker build --rm -t name: version location '.

![Dockerfile build](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(329).png)

### After the setup is build successful, docker image is created and now can be used to run the docker.

### `docker run -it --name docker_name image_name` to run the docker container.

![docker run](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(330).png)

### To start the Jenkins, I used the command `etc/init.d/jenkins start` to start the service.

![start service](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(332)~3.png)

### Using the inspect command I retrieved the ip address of the container

![ip addresses](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(332).png)

### Using the ip address we can access the Jenkins web page.

![web page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(333).png)

Now copy the given location and paste the password at that location and access the Jenkins.
Now after further setup, we can access the page.


![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/Screenshot%20(335).png)

## Jenkins Jobs

Refer the given link for the jenkins jobs : https://github.com/amalk-money/jenkinsProject
