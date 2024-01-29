
pub: build
	find ./docs/* ! -name "CNAME" ! -name "404.html" |xargs rm -rf
	cp -r ./public/*  ./docs/

build:
	hugo

server:
	hugo server -D --bind 0.0.0.0
