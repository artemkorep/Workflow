FROM python:3.11

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY src ./src

ENTRYPOINT ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]