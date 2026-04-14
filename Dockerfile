FROM python:3.9-slim

RUN apt update -y && apt install -y \
    awscli \
    gcc \
    python3-dev \
    libgl1 \
    libglib2.0-0

WORKDIR /app

COPY . /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt



CMD ["python3", "app.py"]