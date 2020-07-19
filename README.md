# jenkinsDockerfile
## Overview of the project
In this project, I have created a DockerFile to create the setup of Jenkins. And later using different jobs I have integrated with github. In real world scenario, all the code is deployed in production system and is accessible to client. Before deploying to production system, this is checked in test system and the deployed to production.
So in this project, I have shown this setup.
## Building the Dockerfile
### After downloading the Dockerfile, use the command `docker build --rm -t name: version location '.
![Dockerfile build](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 1.png)
### After the setup is build successfully, docker image is created and now can be used to run the docker.
### `docker run -it --name docker_name image_name` to run the docker container.
### To start the Jenkins, I used the command `etc/init.d/jenkins start` to start the service.
![start service](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 2.png)
### Using the inspect command I retrieved the ip address of the container
![ip addresses](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 3.png)
### Using the ip address we can access the Jenkins web page.
![web page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 4.png)
Now copy the given location and paste the password at that location and access the Jenkins.
Now after further setup, we can access the page.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 5.png)
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/jen 6.png)
## Jenkins Jobs
### Job 1
Job 1: To copy the code from github to the Jenkins storage.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job1 1.png)
Github URL to retrieve the code.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job1 2.png)
Poll SCM to check the repository every minute.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job1 3.png)
Execute shell code to copy the files
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job1 4.png)

### Job2
Job 2: To create an environment to run the code.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job2 1.png)
Build Trigger saying Job2 to run after Job1 is successfully executed.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job2 2.png)
Execute shell code describes to run a docker container to run php server.
If the container `phpos1` already present, it will not run again.
If not present, it will create a new container and copy all the code to `/var/www/html` location inside the docker.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job2 3.png)

### Job 3
Job 3: This will check the status of the site.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job3 1.png)
Build Trigger saying Job3 to run after Job2 is successfully executed.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job3 2.png)
Execute shell code describes to check the status of the code using `curl` command.
If the status code is `200` means the site is running fine else its not.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/job3 3.png)
When the site is working fine i.e., `status code` equal to `200` , t outputs as `Working Fine`.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/ok.png)
If the status code is not `200`, it outputs `ALERT!!! SITE NOT WORKING` 
To demonstrate it, I used a different php file to show it.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/not ok why.png)
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/ok not.png)

###Result and Conclusion
Finally created a Delivery Pipeline to work this scenario out.
![Jenkins page](https://github.com/amalk-money/jenkinsDockerfile/blob/master/IMG/pip.png)
