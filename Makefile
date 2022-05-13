run:
	hugo serve --bind 0.0.0.0

init:
	git submodule update --recursive --remote

build:
	rm -rf public
	hugo --gc --minify
