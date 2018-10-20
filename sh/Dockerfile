FROM debian:stable-slim

LABEL "repository"="https://github.com/jclem/actions"
LABEL "homepage"="https://github.com/jclem/actions/mix"
LABEL "maintainer"="Jonathan Clem <jonathan@jclem.net>"

LABEL "com.github.actions.name"="sh"
LABEL "com.github.actions.description"="A generic code container with some packages"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="gray-dark"

RUN apt-get update
RUN apt-get install -y openssh-client
RUN apt-get install -y jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
