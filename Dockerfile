#MUST COMPILE GOLANG CODE FOR LINUX !
#env GOOS=linux GOARCH=amd64 go build -v

FROM alpine:3.6

WORKDIR /opt/issue-sync

RUN apk update --no-cache && apk add ca-certificates

COPY issue-sync /opt/issue-sync/issue-sync

ENTRYPOINT ["./issue-sync"]
