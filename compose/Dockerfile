FROM docker:latest

RUN apk add --no-cache py-pip
RUN pip install docker-compose

LABEL "name"="Docker-Compose CLI Action"
LABEL "maintainer"="AppCraft Actions <egorm@appcraft.by>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Action for Docker-Compose"
LABEL "com.github.actions.description"="Wraps the Docker-Compose CLI to enable Docker commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
