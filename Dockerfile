FROM golang:alpine
WORKDIR /go/src/gogsc
COPY ./ .
RUN go build -o app .

FROM alpine
WORKDIR /go/src/gogsc/
COPY --from=0 /go/src/gogsc/app .
CMD ["./app"]