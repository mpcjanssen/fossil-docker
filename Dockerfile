FROM alpine:latest
RUN apk add --no-cache fossil
WORKDIR /repos
ENTRYPOINT ["fossil", "server", "--nojail", "-P", "80", "--repolist", "--baseurl", "https://fossil.mpcjanssen.nl", "."]
LABEL org.opencontainers.image.authors="mpc.janssen@gmail.com"
