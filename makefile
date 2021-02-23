TAG=murphyl/docsify:latest

build:
	docker build -t $(TAG) .

push: build
	docker tag $(TAG) $(TAG)
	docker push $(TAG)