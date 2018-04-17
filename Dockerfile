FROM python:3.6.3

MAINTAINER Thomas Strohmeier

RUN apt-get update && apt-get install -y jq software-properties-common \
	&& pip install awscli \
	&& curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest \
	&& chmod +x /usr/local/bin/ecs-cli \
	&& apt-add-repository ppa:ansible/ansible \
	&& apt-get update && apt-get install -y ansible
