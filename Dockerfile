FROM debian:9-slim

WORKDIR /github-actions

RUN apt-get update -y && apt-get install -y tar curl
RUN curl -O https://githubassets.azureedge.net/runners/2.162.0/actions-runner-linux-arm-2.162.0.tar.gz
RUN tar xzf ./actions-runner-linux-arm-2.162.0.tar.gz

CMD ./config.sh --url $URL --token $TOKEN
ENTRYPOINT ./run.sh
