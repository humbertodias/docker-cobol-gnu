# docker-cobol-gnu

Docker image that contains a GNU version of cobol compiler.

### Build

```sh
docker build . -t cobol-gnu
```

### Run 

```sh
docker run -it -v `pwd`:/app cobol-gnu
```

### Compile

```sh
cobc -x -o hello.exe hello.cbl
```

### Run

```sh
./hello.exe
```

HELLO, WORLD


# Debug

Visual Code

CTRL+P

```sh
ext install bitlang.cobol
ext install bitlang.gnucobol
ext install OlegKunitsyn.gnucobol-debug
ext install webfreak.debug
```


### Ref

* [cobol-hello-world](https://www.ibmmainframer.com/cobol-tutorial/cobol-hello-world/)
* [gnucobol-debug](https://marketplace.visualstudio.com/items?itemName=OlegKunitsyn.gnucobol-debug)
* [visualcode-debug](http://dickens.co.in/run-cobol-vscode-msys2-windows)
