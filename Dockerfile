FROM python:3.13-slim AS builder

RUN apt-get update \
    && apt-get install -y gcc libpq-dev

COPY requirements.txt .

RUN pip install --prefix=/install -r requirements.txt

FROM python:3.13-slim

WORKDIR /app

RUN useradd --create-home --shell /bin/bash app

COPY --from=builder /install /usr/local

COPY --chown=app:app . /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

USER app
