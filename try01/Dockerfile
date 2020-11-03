FROM golang:1.15 as builder
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -mod=readonly -v -o server

FROM gcr.io/distroless/base
COPY --from=builder /app/server /server
CMD ["/server"]
