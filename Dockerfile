FROM andrewosh/binder-base
MAINTAINER Kyle Cranmer <kyle.cranmer@nyu.edu>

USER root

COPY . 
RUN curl https://bootstrap.pypa.io/get-pip.py | python -
RUN curl https://get.docker.com/builds/Linux/x86_64/docker-1.9.1  -o /usr/bin/docker && chmod +x /usr/bin/docker
RUN yum install -y gcc graphviz-devel ImageMagick python-devel
RUN curl -L https://download.getcarina.com/carina/latest/$(uname -s)/$(uname -m)/carina -o /usr/local/bin/carina && \
    chmod +x /usr/local/bin/carina 
RUN pip install https://github.com/lukasheinrich/adage/archive/master.zip
RUN pip install -e .
