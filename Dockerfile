#build step
FROM golang:1.14 AS builder
RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel
RUN mkdir -p /go/src/app
ADD . /go/src/app
RUN CGO_ENABLED=0 GOOS=linux  revel build app prod

# clean image
FROM alpine:latest  
RUN apk --no-cache add ca-certificates
COPY --from=builder /go /go
WORKDIR /go
ENTRYPOINT prod/run.sh
EXPOSE 9000

