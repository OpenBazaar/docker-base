FROM alpine:3.8
RUN apk update && apk add ca-certificates

FROM scratch
COPY --from=0 /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
