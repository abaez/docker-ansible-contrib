FROM alpine

MAINTAINER Alejandro Baez <https://twitter.com/a_baez>

# install pre depends
RUN apk add -U curl

# install lang depends
RUN apk add -U python ruby perl

# installing dvcs depends
RUN apk add -U git mercurial subversion

RUN curl -s https://bootstrap.pypa.io/get-pip.py | python -

# install python needs
RUN pip install mock nose passlib

# cloned ansible source
RUN git clone https://github.com/ansible/ansible.git --recursive
RUN git clone https://github.com/ansible/ansible-modules-extras.git --recursive

WORKDIR /ansible

RUN source ./hacking/env-setup

CMD ["ansible-playbook", "--version"]
