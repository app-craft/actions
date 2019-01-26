FROM elixir

LABEL "repository"="https://github.com/jclem/actions"
LABEL "homepage"="https://github.com/jclem/actions/mix"
LABEL "maintainer"="Jonathan Clem <jonathan@jclem.net>"

LABEL "com.github.actions.name"="mix/dialyzer"
LABEL "com.github.actions.description"="An action for running Elixir mix commands, with PLT"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="orange"

ARG MIX_HOME=/.mix
ENV MIX_HOME=$MIX_HOME
ARG MIX_ENV=dev
ENV MIX_ENV=$MIX_ENV

RUN mix local.rebar --force
RUN mix local.hex --force

RUN mix archive.install hex dialyxir --force
RUN mix dialyzer

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
