# SCHRITT 1: Bauen
FROM golang:1.25-alpine AS builder
RUN apk add --no-cache git gcc musl-dev sqlite-dev

WORKDIR /src
RUN git clone --branch v1.0.2 https://github.com/TRC-Loop/cairn.git .

WORKDIR /src/cmd/cairn
ENV CGO_ENABLED=1
RUN go mod download
RUN GOOS=linux go build -o /cairn_binary .

# SCHRITT 2: Finales Image
FROM alpine:latest
RUN apk add --no-cache ca-certificates sqlite-libs tzdata jq

WORKDIR /data
COPY --from=builder /cairn_binary /usr/local/bin/cairn

# run.sh kopieren
COPY run.sh /
RUN sed -i 's/\r$//' /run.sh && chmod a+x /run.sh

# WICHTIGE UMGEBUNGSVARIABLEN (Laut Docker-Compose)
# Wir setzen diese fest, damit das Backend weiß, wo es arbeiten soll
ENV CAIRN_DB_PATH="/data/cairn.db"
ENV CAIRN_LISTEN_ADDR=":8080"
ENV HOST=0.0.0.0
ENV PORT=8080

CMD [ "/bin/sh", "/run.sh" ]
