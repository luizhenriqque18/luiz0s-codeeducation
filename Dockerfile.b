FROM golang:alpine

WORKDIR /app

COPY hello.go .

RUN go build -v hello.go

CMD [ "./hello" ]