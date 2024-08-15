DOCKER_IMAGE_NAME = asad-developer
DOCKER_IMAGE_TAG = latest

docker-build: Dockerfile
	-docker rmi -f $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)
	-docker rmi =f tkemmerling/$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)
	docker build --no-cache -f Dockerfile -t $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG) .
	docker tag $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG) tkemmerling/$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)

release:
	docker push tkemmerling/$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)


