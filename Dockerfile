# Using golang version 1.22.3 
FROM golang:1.22.4-bookworm

WORKDIR /app

COPY go.mod main.go ./

# Install all the dependencies if required
RUN go mod download

COPY . .

# Build the main package
RUN go build -o main .

CMD ["./main"]