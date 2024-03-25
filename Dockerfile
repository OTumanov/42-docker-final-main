FROM golang:1.22
WORKDIR /parcels
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./parcels
CMD ["/parcels/parcels"]