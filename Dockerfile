# Automated Ruby Binaries Builder
#
FROM ubuntu:14.04
MAINTAINER Gabriel Mazetto "<brodock@gmail.com>"

# install essentials
RUN apt update && apt install -y build-essential curl git zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev && apt-get clean

# install ruby-build
RUN git clone https://github.com/sstephenson/ruby-build.git /opt/ruby-build
RUN /opt/ruby-build/install.sh

VOLUME /opt/rubies
ENTRYPOINT ["/opt/ruby-build/bin/ruby-build", "-k"]

# build ruby 2.1.5
#RUN /opt/ruby-build/bin/ruby-build -k 2.1.5 /opt/rubies && rm -rf /tmp/ruby-build*
