FROM golang:1.13.1
ADD ./src /go/src/app
WORKDIR /go/src/app
ENV PORT=3001 
CMD ["go", "run", "main.go"]