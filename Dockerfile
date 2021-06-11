FROM golang:1.13-alpine3.10 as builder

WORKDIR /app

COPY README.md .

FROM postgres:11 as builder2

WORKDIR /app

COPY --from=builder /app/README.md .

FROM alpine:latest

WORKDIR /app

COPY --from=builder2 /app/README.md .
