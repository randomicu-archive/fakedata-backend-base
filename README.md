# fakedata-backend-base

Randomicu base image from [python:3.10.4-slim-bullseye](https://hub.docker.com/layers/python/library/python/3.10.4-slim-bullseye/images/sha256-b4473ae501f273874a4379f489ea0270dd4dd479d26c72d6d520fb4e717493c6?context=explore) for fakedata-backend with pre-installed poetry and libpq-dev.

Debian package version search: https://packages.debian.org/index

## Environment

OS libraries:
1. `curl=7.74.0-1.3+deb11u1`
2. `libpq-dev=13.7-0+deb11u1`

poetry environment variables:

1. `POETRY_VERSION 1.1.13`
2. `POETRY_HOME /opt/poetry`
3. `POETRY_VIRTUALENVS_IN_PROJECT true`
4. `POETRY_NO_INTERACTION 1`

fakedata environment variables:

1. `PYTHONPATH /usr/src/randomicu-fakedata`
2. `PYSETUP_PATH /opt/pysetup`
3. `VENV_PATH /opt/pysetup/.venv`

## Image information

Since v1.0.1 user `fakedata` in group `fakedata` was added.

## Credits

Project structure was inspired by this [comment](https://github.com/python-poetry/poetry/issues/1879#issuecomment-592133519).

## About

Randomicu project was made using [Jetbrains](https://www.jetbrains.com/?from=RandomicuQAAPI) PyCharm, Intellij IDEA.
