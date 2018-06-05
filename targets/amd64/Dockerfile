FROM alpine:3.7
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

RUN set -xe && \
  apk --no-cache add \
    openssh-client \
    openssh-server \
    openssh-sftp-server \
    rsync && \
  sed -r -i 's/^#((AllowAgentForwarding).*)$/\1/' /etc/ssh/sshd_config && \
  sed -r -i 's/^#?((GatewayPorts).*)$/GatewayPorts yes/' /etc/ssh/sshd_config

EXPOSE 22

COPY ./files/ /

VOLUME [ "/etc/ssh/", "/root/.ssh/" ]

ENTRYPOINT /docker/docker-entrypoint.sh