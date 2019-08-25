FROM jess/img:v0.5.7

USER root

ENV USER root
ENV HOME /root

RUN apk add bash rsync jq
RUN apk add --no-cache git openssh-client

ADD build /bin/build
ADD script /bin/script

RUN chmod -x /bin/build /bin/script
