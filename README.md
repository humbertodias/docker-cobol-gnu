# docker-cobol-gnu

Docker image based on Ubuntu that contains the GNU version of cobol compiler.

### Build

```
docker build . -t cobol-gnu
```

### Run 

```
docker run -it -v `pwd`:/app cobol-gnu
```

### Compile

```
cobc -x -o hello hello.cbl
```

### Run

```
./hello
```

HELLO, WORLD


### Ref

[cobol-hello-world](https://www.ibmmainframer.com/cobol-tutorial/cobol-hello-world/)
