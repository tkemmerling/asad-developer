
build: Dockerfile
	docker rmi -f autogen_full_img:latest
	docker build --no-cache -f Dockerfile -t autogen_full_img .





