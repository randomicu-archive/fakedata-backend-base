FROM python:3.9.6-slim-buster@sha256:fcfbcb15bc6bd589a7c4ce0000fd02b88ad3fc4a8360c272787944f69e2daf59 as python-base

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PIP_NO_CACHE_DIR off
ENV PIP_DEFAULT_TIMEOUT 100

ENV POETRY_VERSION 1.1.5
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
    apt-get install --yes --no-install-recommends curl=7.64.0-4+deb10u2 libpq-dev=11.12-0+deb10u1 && \
    pip install --upgrade --no-cache-dir pip && \
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    groupadd -r fakedata && \
    useradd -r -g fakedata fakedata && \
    mkdir -p /usr/src/randomicu-fakedata && \
    chown fakedata:fakedata /usr/src/randomicu-fakedata
