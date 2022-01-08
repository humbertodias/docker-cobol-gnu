build:
	docker build . -t cobol-gnu

run:
	docker run -it -v `pwd`:/app cobol-gnu

compile:
	cobc -x -o hello hello.cbl
