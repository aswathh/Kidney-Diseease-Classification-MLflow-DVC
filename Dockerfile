FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY setup.py .
RUN pip install -e .

COPY . .

CMD ["python3", "app.py"]