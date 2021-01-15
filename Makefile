IMAGE=eu.gcr.io/silta-images/silta-k8s-controller-sidecars:latest

build:
	CGO_ENABLED=0 go build -a -installsuffix cgo -o main .

docker:
	docker build -t ${IMAGE} -f dev/Dockerfile .
	docker push ${IMAGE}
