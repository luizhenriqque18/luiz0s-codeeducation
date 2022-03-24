FROM golang:alpine AS build-go

WORKDIR /build

COPY hello.go .

RUN go build -v hello.go


FROM hello-world

WORKDIR /app

COPY --from=build-go /build/hello /app/

CMD [ "./hello" ]