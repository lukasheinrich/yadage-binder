FROM andrewosh/binder-base
MAINTAINER Kyle Cranmer <kyle.cranmer@nyu.edu>


USER root

RUN apt-get update
RUN apt-get install -y gcc pkg-config
RUN apt-get install -y graphviz graphviz-dev
RUN apt-get install -y imagemagick
RUN apt-get install -y python-dev
RUN ldconfig
RUN curl -k https://bootstrap.pypa.io/get-pip.py | python -
RUN curl -k https://get.docker.com/builds/Linux/x86_64/docker-1.9.1  -o /usr/bin/docker && chmod +x /usr/bin/docker
RUN curl -L -k https://download.getcarina.com/carina/latest/$(uname -s)/$(uname -m)/carina -o /usr/local/bin/carina && \
    chmod +x /usr/local/bin/carina 
RUN pip install https://github.com/lukasheinrich/adage/archive/master.zip
RUN pip install https://github.com/lukasheinrich/yadage/archive/master.zip
VOLUME /workdir
