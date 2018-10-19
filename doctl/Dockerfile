FROM debian:stable-slim

LABEL "repository"="https://github.com/jclem/actions"
LABEL "homepage"="https://github.com/jclem/actions/doctl"
LABEL "maintainer"="Jonathan Clem <jonathan@jclem.net>"

LABEL "com.github.actions.name"="doctl"
LABEL "com.github.actions.description"="An action for using the Digital Ocean CLI tool"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

# Update SSL certificates
RUN apt-get update
RUN apt-get install -y curl

# Copy and unarchive doctl
ARG VERSION="1.11.0"
RUN curl -O -L "https://github.com/digitalocean/doctl/releases/download/v$VERSION/doctl-$VERSION-linux-amd64.tar.gz"
RUN tar -xzf "doctl-$VERSION-linux-amd64.tar.gz"
RUN mv doctl /bin/doctl

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
