FROM golang:alpine
WORKDIR /go/src/github.com/linghaihui/gogsc
COPY ./ .
RUN CGO_ENABLED=0 go build -o app .

FROM scratch
WORKDIR /go/src/github.com/linghaihui/gogsc
COPY --from=0 /go/src/github.com/linghaihui/gogsc/app .
CMD ["./app"]
