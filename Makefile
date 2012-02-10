ERLDIR = /usr/local/erlang/R14B04/lib/erlang
PACKAGE_NAME = eleveldb
PACKAGE_VERSION = 1.0.1

all: compile

compile:
	./rebar compile

test: compile
	./rebar eunit

clean:
	./rebar clean

install:
	install -d $(ERLDIR)/lib/$(PACKAGE_NAME)-$(PACKAGE_VERSION)
	cp -r priv $(ERLDIR)/lib/$(PACKAGE_NAME)-$(PACKAGE_VERSION)
	cp -r ebin $(ERLDIR)/lib/$(PACKAGE_NAME)-$(PACKAGE_VERSION)
