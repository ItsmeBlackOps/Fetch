FROM golang:1.20-alpine

# Create working directory for receipt API
WORKDIR /app

# Copy our .mod and .sum files into ./app in the Docker image
COPY go.mod ./
COPY go.sum ./

# Download all dependencies needed now that the image has our .mod and .sum files
RUN go mod download

# Copy source code into the Docker image
COPY *.go ./

# Compile the Go API application
RUN go build fetch-points.go

CMD [ "./fetch-points" ]