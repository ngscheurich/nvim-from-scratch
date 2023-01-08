run:
	docker run -it --rm -v ${PWD}:/root/.config/nvim nvim_scratch

build:
	docker build -t nvim_scratch .
