FROM golang:1.18-alpine

WORKDIR /app

COPY backend/ .

RUN go build -o main ./cmd/main.go

EXPOSE $PORT

CMD ["/app/main"]
