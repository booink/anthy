FROM ubuntu

RUN apt-get update
RUN apt-get -y install g++ make autoconf automake file autotools-dev libtool

ENV LD_LIBRARY_PATH=/usr/local/lib

WORKDIR /app

COPY . /app
RUN automake || true
RUN autoreconf --install
RUN ./configure CFLAGS="-Werror=unused-result -Werror=maybe-uninitialized -Werror=implicit-function-declaration -Werror=implicit-fallthrough=0"
RUN make && make install
