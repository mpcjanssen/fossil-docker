FROM alpine:latest
RUN apk add --no-cache fossil
WORKDIR /repos
ENV BASE_URL=https://fossil.mpcjanssen.nl
ENTRYPOINT fossil server --nojail -P 80 --repolist --baseurl ${BASE_URL} .
LABEL org.opencontainers.image.authors="mpc.janssen@gmail.com"
EXPOSE 80/tcp
