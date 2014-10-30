# Dockerfile brodock/build-ruby

This Docker image will contain ruby-build and everything needed to build
every single ruby binary, for the most recent ubuntu LTS version.

We will store then on /opt/rubies to make it easily accessible for
chruby, as a side effect, and make it easier to package with fpm.

The ultimate goal here is to be able to package every ruby runtime as a
system ruby.

Free bonus of packaging:

* Will not mess with $PATH
* Will not mess with `cd`
* Will work fine with CRONs
* Will work fine with sudo
* No more shims

## Build your own image

```
docker build -t <TAG> .
```

## Usage

```
docker run -i -t brodock/build-ruby /opt/ruby-build/bin/ruby-build -k 2.1.3 /opt/rubies
```
