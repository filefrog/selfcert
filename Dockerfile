FROM alpine:3

ARG BUILD_DATE
ARG VCS_REF
LABEL maintainer="James Hunt <images@huntprod.com>" \
      summary="Self-Signed Certificate Generator" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/filefrog/selfcert.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

ENV KEYFILE=/certs/tls.key
ENV CRTFILE=/certs/tls.crt
ENTRYPOINT ["/usr/bin/selfcert"]

RUN apk add openssl
COPY selfcert /usr/bin/selfcert
