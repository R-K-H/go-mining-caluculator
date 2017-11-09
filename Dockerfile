FROM golang:1.8

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go get github.com/Masterminds/glide
RUN go-wrapper install    # "go install -v ./..."
RUN glide install

CMD ["go-wrapper", "run"] # ["main"]