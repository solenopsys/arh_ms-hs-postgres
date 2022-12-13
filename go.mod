module solenopsys.org/zmq_postgress

go 1.17

replace solenopsys.org/zmq_connector v0.0.0 => ./zmq_connector

require (
	github.com/lib/pq v1.10.4
	solenopsys.org/zmq_connector v0.0.0
)

require (
	github.com/go-logr/logr v1.2.0 // indirect
	github.com/go-zeromq/goczmq/v4 v4.2.2 // indirect
	github.com/go-zeromq/zmq4 v0.14.1 // indirect
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	k8s.io/klog/v2 v2.70.1 // indirect
)
