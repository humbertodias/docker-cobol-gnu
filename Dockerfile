FROM alpine

# Dependencies
RUN apk update && apk add wget xz make vim nano sudo build-base ncurses-dev db-dev db gmp-dev

ARG COBOL_VERSION=3.1
ARG COBOL_VERSION_REV=3.1.2

# Cobol
RUN wget --no-check-certificate https://ufpr.dl.sourceforge.net/project/gnucobol/gnucobol/$COBOL_VERSION/gnucobol-$COBOL_VERSION_REV.tar.xz && \
    xz -d gnucobol-$COBOL_VERSION_REV.tar.xz && \
    tar xvf gnucobol-$COBOL_VERSION_REV.tar && \
    cd gnucobol-$COBOL_VERSION_REV && \
    ./configure && \
    make install && \
    cd .. && rm -rf gnucobol-*

RUN adduser \
  --disabled-password \
  --home /app \
  --gecos '' cobol \
  && chown -R cobol /app

USER cobol

WORKDIR /app
