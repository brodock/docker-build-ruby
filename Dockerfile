# Automated Ruby Binaries Builder
#
FROM ubuntu:14.04
MAINTAINER Gabriel Mazetto "brodock@gmail.com>"

# install essentials
RUN apt-get update
RUN apt-get -y install build-essential curl git
RUN apt-get -y install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

# install ruby-build
RUN git clone https://github.com/sstephenson/ruby-build.git /opt/ruby-build
RUN /opt/ruby-build/install.sh

# cleanup
RUN apt-get clean

# build ruby 2.1.3
RUN /opt/ruby-build/bin/ruby-build -k 2.1.3 /opt/rubies
