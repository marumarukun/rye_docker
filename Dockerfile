FROM ubuntu:22.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y curl git &&\
    apt-get upgrade -y && \
    apt-get clean

WORKDIR /workspace

ENV RYE_HOME="/opt/rye"
ENV PATH="$RYE_HOME/shims:$PATH"
RUN curl -sSf https://rye-up.com/get | RYE_VERSION="0.32.0" RYE_INSTALL_OPTION="--yes" bash \
    && rye config --set-bool behavior.use-uv=true

COPY . ./
RUN rye sync

