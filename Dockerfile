FROM golang:1.13-alpine3.10 as builder

WORKDIR /app

COPY README.md .

FROM alpine:latest

COPY --from=builder /app/README.md .

