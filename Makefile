DOCKER_IMAGE_NAME = autogen_full_img
DOCKER_IMAGE_TAG = latest

docker-build: Dockerfile
	-docker rmi -f $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)
	docker build --no-cache -f Dockerfile -t $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG) .