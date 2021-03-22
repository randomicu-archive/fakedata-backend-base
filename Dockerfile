FROM python:3.9.2-slim-buster as python-base

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PIP_NO_CACHE_DIR off
ENV PIP_DISABLE_PIP_VERSION_CHECK on
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
    apt-get update && \
    apt-get install --yes --no-install-recommends curl && \
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    groupadd -r fakedata && \
    useradd -r -g fakedata fakedata && \
    mkdir -p /usr/src/randomicu-fakedata && \
    chown fakedata:fakedata /usr/src/randomicu-fakedata
