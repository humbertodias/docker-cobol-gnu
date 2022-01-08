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