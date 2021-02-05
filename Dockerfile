FROM python:3.6-alpine

RUN adduser -D fastapi

WORKDIR /home/fastapi

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY api.py ./

RUN chown -R fastapi:fastapi ./
USER fastapi

CMD uvicorn api:app --host 0.0.0.0 --port 5057