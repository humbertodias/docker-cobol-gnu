FROM ubuntu:20.04

# Dependencies
RUN apt update -y && apt install -y wget xz-utils make build-essential vim-tiny nano libgmp-dev libdb-dev libncurses5-dev libncursesw5-dev

ARG COBOL_VERSION=3.1
ARG COBOL_VERSION_REV=3.1.2

# Cobol
RUN wget https://ufpr.dl.sourceforge.net/project/gnucobol/gnucobol/$COBOL_VERSION/gnucobol-$COBOL_VERSION_REV.tar.xz && \
xz -d gnucobol-$COBOL_VERSION_REV.tar.xz && \
tar xvf gnucobol-$COBOL_VERSION_REV.tar && \
cd gnucobol-$COBOL_VERSION_REV && \
./configure && \
make install

# Cobol - LD_LIBRARY_PATH
RUN echo "/usr/local/lib" >> /etc/ld.so.conf.d/gnu-cobol-$COBOL_VERSION_REV.conf && \
ldconfig