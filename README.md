# fakedata-backend-base

Base image from `python:3.9.4-slim-buster` for fakedata-backend with pre-installed poetry and libpq-dev.

## Used environment variables

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
