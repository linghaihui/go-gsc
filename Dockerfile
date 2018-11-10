FROM golang:alpine
WORKDIR /go/src/github.com/linghaihui/gogsc
COPY ./ .
RUN go build -o app .

FROM alpine
WORKDIR /go/src/github.com/linghaihui/gogsc
COPY --from=0 /go/src/github.com/linghaihui/gogsc/app .
CMD ["./app"]