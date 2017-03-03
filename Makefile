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

test:
	docker-compose up -d; sleep 10
	curl --retry 10 --retry-delay 5 -v http://localhost:8080/api/version