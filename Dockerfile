FROM alpine:3.10
LABEL "repository"="https://github.com/snirben-pdf/github-tag-action"
LABEL "homepage"="https://github.com/snirben-pdf/github-tag-action"
LABEL "maintainer"="PDF Solutions"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver
CMD ["/entrypoint.sh"]
# ENTRYPOINT ["/entrypoint.sh"]
