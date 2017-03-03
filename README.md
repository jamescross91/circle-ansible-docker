[![CircleCI](https://circleci.com/gh/jamescross91/circle-ansible-docker.svg?style=svg)](https://circleci.com/gh/jamescross91/circle-ansible-docker)

# Continuous Deployment with CircleCI, Ansible and Docker

A simple example showing you how to do continuous integration using CircleCI, and Ansible to deploy a Docker based application.  To setup all you need to do is:

1. Add the following environment variables to your CircleCI build configuration:
  * DOCKER_EMAIL
  * DOCKER_PASS	
  * DOCKER_USER	
  * PROD_HOST
  * PROD_USER
2. Upload your prod servers SSH key to the SSH key section of your CircleCI configuration

Thats it.
