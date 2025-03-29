FROM python:3.12-bullseye

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="${PATH}:/root/.local/bin"

WORKDIR /is601-hw8
COPY . /is601-hw8/

RUN poetry install

ENTRYPOINT ["poetry", "run"]
CMD [ "app" ]
