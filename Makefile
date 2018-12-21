#!/usr/bin/make -f

SHELL:=$(shell which bash)

clean:
	@docker-compose down

build:
	@docker-compose up -d --build

start: build

install-pip:
	@if ! which ansible &>/dev/null ; then \
		pip install $(shell test -z "$$TRAVIS" || echo "--user") -r requirements.txt ; \
	fi

test: start install-pip
	@make -C tests/ test
