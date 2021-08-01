# fakedata-backend-base

Randomicu base image from [python:3.9.4-slim-buster](https://hub.docker.com/layers/python/library/python/3.9.6-slim-buster/images/sha256-fcfbcb15bc6bd589a7c4ce0000fd02b88ad3fc4a8360c272787944f69e2daf59?context=explore) for fakedata-backend with pre-installed poetry and libpq-dev.

## Used environment variables

OS related:
1. `curl=7.64.0-4+deb10u2`
2. `libpq-dev=11.12-0+deb10u1`

poetry related:

1. `POETRY_VERSION 1.1.5`
2. `POETRY_HOME /opt/poetry`
3. `POETRY_VIRTUALENVS_IN_PROJECT true`
4. `POETRY_NO_INTERACTION 1`

fakedata related:

1. `PYTHONPATH /usr/src/randomicu-fakedata`
2. `PYSETUP_PATH /opt/pysetup`
3. `VENV_PATH /opt/pysetup/.venv`

## Image information

Since v1.0.1 user `fakedata` in group `fakedata` was added.

## Credits

Project structure was inspired by this [comment](https://github.com/python-poetry/poetry/issues/1879#issuecomment-592133519).

## About

Randomicu project was made using [Jetbrains](https://www.jetbrains.com/?from=RandomicuQAAPI) PyCharm, Intellij IDEA.
