run: build
	docker run --rm dnsviz chksite.com

build:
	docker build . --tag dnsviz
