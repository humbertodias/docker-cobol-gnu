# docker-cobol-gnu

Docker image that contains a GNU version of cobol compiler.

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
cobc -x -o hello.exe hello.cbl
```

### Run

```
./hello.exe
```

HELLO, WORLD


# Debug

Visual Code

CTRL+P

```
ext install bitlang.cobol
ext install bitlang.gnucobol
ext install OlegKunitsyn.gnucobol-debug
ext install webfreak.debug
```


### Ref

* [cobol-hello-world](https://www.ibmmainframer.com/cobol-tutorial/cobol-hello-world/)
* [gnucobol-debug](https://marketplace.visualstudio.com/items?itemName=OlegKunitsyn.gnucobol-debug)
* [visualcode-debug](http://dickens.co.in/run-cobol-vscode-msys2-windows)
