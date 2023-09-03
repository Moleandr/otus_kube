FROM python:3.10-alpine

ENV APP=/app
WORKDIR $APP


RUN pip install poetry
COPY poetry.lock pyproject.toml $APP/
RUN poetry config virtualenvs.create false && poetry install

COPY . $APP/

CMD uvicorn src.main:app --host 0.0.0.0 --port 8000







