FROM python:3.10.4-slim-bullseye@sha256:b4473ae501f273874a4379f489ea0270dd4dd479d26c72d6d520fb4e717493c6 as python-base

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PIP_NO_CACHE_DIR off
ENV PIP_DEFAULT_TIMEOUT 100

ENV POETRY_VERSION 1.1.13
ENV POETRY_HOME /opt/poetry
ENV POETRY_VIRTUALENVS_IN_PROJECT true
ENV POETRY_NO_INTERACTION 1

ENV PYTHONPATH /usr/src/randomicu-fakedata
ENV PYSETUP_PATH /opt/pysetup
ENV VENV_PATH /opt/pysetup/.venv

ENV PATH "$POETRY_HOME/bin:$VENV_PATH/bin:$PATH"

###################################
FROM python-base

RUN set -eux && \
    apt-get update && apt-get -y upgrade && \
    apt-get install --yes --no-install-recommends curl=7.74.0-1.3+deb11u1 libpq-dev=13.7-0+deb11u1 && \
    pip install --upgrade --no-cache-dir pip && \
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    groupadd -r fakedata && \
    useradd -r -g fakedata fakedata && \
    mkdir -p /usr/src/randomicu-fakedata && \
    chown fakedata:fakedata /usr/src/randomicu-fakedata
