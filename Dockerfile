## All Dockerfiles start from a base image
## you want to choose as lightweight a base
## image to start with as possible
FROM golang:1.19.4-alpine3.17
## we create a directory within our docker image
## that will contain all of the code for our app
RUN mkdir /app
## We need to copy the current directory
## into our /app directory
ADD . /app
## we set our workdir
WORKDIR /app
## We build our go application and
## specify the name of the executable we
## want to build
RUN go build -o main .
## here we trigger our newly built Go program
CMD ["/app/main"]