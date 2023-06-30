# syntax=docker/dockerfile:1

FROM python:3.11.4-slim-bookworm
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["uvicorn", "main:app" , "--reload", "--host", "0.0.0.0", "--port", "5000"]
