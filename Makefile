build:
	docker build . -t cobol-gnu

run:
	docker run -it -v `pwd`:/app cobol-gnu

compile:
	for f in *.cbl;\
	do fname=`basename $$f .cbl` ;\
	   cobc -d -x -o $$fname.exe $$f ;\
	done

clean:
	rm -f *.exe	*.c *.h  *.i

tag:
	docker tag cobol-gnu hldtux/cobol-gnu:latest

push:	tag
	docker push hldtux/cobol-gnu:latest
