.PHONY: build push all

build:
	docker build --tag=mpcjanssen/fossil .

push:
	docker push mpcjanssen/fossil

all: build push

