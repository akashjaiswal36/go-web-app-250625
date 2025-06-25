# Stage1 : Build the Go binary
FROM golang:1.22

# Set the working Directory

WORKDIR /app

# Copy the go.mod and go.sum files
COPY go.mod ./

# Download the dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the application

RUN go build -o main .

# Expose the port the app runs on
EXPOSE 8080

CMD [ "./main" ]