#Makefile
whoami := $(shell whoami)

build:
	docker build -t jamescross91/cd-test .

push: build
	docker push jamescross91/cd-test

run: install
	docker-compose up

install:
	ansible-galaxy install -r devops/requirements.yml -p devops/roles

provisioning:
	ansible-playbook devops/provisioning.yml -i devops/hosts/production