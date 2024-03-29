# SPDX-License-Identifier: BSD-3-Clause
# (c) 2021, Konstantin Demin

ARG GOLANG_VERSION=latest
ARG ALPINE_VERSION=latest

#################################################

FROM docker.io/rockdrilla/golang:pure-$GOLANG_VERSION AS pure

FROM alpine:$ALPINE_VERSION

ENV GOROOT="/usr/local/go"
ENV GOPATH="/go"

ENV PATH="/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ENV LANG="C.UTF8"
ENV LC_ALL="C.UTF-8"
ENV TERM="xterm"
ENV TMPDIR="tmp"
ENV TMP="tmp"
ENV TEMPDIR="tmp"
ENV TEMP="tmp"

WORKDIR /go

CMD sh

COPY --from=pure  /  /
