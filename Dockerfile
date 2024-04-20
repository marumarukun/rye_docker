FROM ubuntu:22.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y curl &&\
    apt-get upgrade -y && \
    apt-get clean

WORKDIR /workspace

RUN curl -sSf https://rye-up.com/get | RYE_INSTALL_OPTION="--yes" bash \
	&& echo 'source "$HOME/.rye/env"' >> ~/.bashrc \
    && rye config --set-bool behavior.use-uv=true \
    && rye sync
