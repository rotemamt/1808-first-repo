FROM golang:1.20 AS builder
WORKDIR /app

# Create main.go inline
RUN echo 'package main\nimport "fmt"\nfunc main() { fmt.Println("Hello, Multi-Stage Docker!") }' > main.go

# Build the Go binary
RUN go build -o myapp main.go

# Stage 2: Create lightweight runtime image
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/myapp .
CMD ["./myapp"]
