
pub: build
	find ./docs/* ! -name "CNAME" ! -name "404.html" |xargs rm -rf
	cp -r ./public/*  ./docs/
	git add .
	git commit -m "publish"
	git push

build:
	hugo

server:
	hugo server -D --bind 0.0.0.0
