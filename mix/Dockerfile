FROM debian:stable

LABEL "repository"="https://github.com/jclem/actions"
LABEL "homepage"="https://github.com/jclem/actions/mix"
LABEL "maintainer"="Jonathan Clem <jonathan@jclem.net>"

LABEL "com.github.actions.name"="mix"
LABEL "com.github.actions.description"="An action for running Elixir mix commands"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="orange"

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y gnupg
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
  dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y esl-erlang
RUN apt-get install -y elixir

ARG MIX_HOME=/github/home/.mix
ENV MIX_HOME=$MIX_HOME

RUN mix local.rebar --force
RUN mix local.hex --force

ENTRYPOINT "mix"
