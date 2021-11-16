version?=latest
target?=localhost

build:
	docker build -t ping-wrapper:$(version) -f Dockerfile $(PWD)

test:
	docker run --rm ping-wrapper:$(version) $(target) 1