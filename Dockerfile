FROM          ubuntu
RUN           apt update -y
RUN           apt install golang-go -y
RUN           mkdir /go/src
WORKDIR       /src
COPY          main.go .
COPY          tracing.go .
COPY          user.go .
RUN           go build
CMD           ["src", "go build"]