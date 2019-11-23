container:
	docker run -it --rm \
		--mount type=bind,source="$$(pwd)",target=/src \
		-p 25565:25565 \
		jk/pixelmon

image:
	docker build -t jk/pixelmon .

.PHONY: image container
