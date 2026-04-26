FROM python:3.10-slim

ENV PIP_NO_CACHE_DIR=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl wget unzip ffmpeg gcc \
    libffi-dev libjpeg-dev libwebp-dev \
    libpq-dev libxml2-dev libxslt1-dev \
    libssl-dev zlib1g sqlite3 libsqlite3-dev \
    libopus0 libopus-dev jq \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel

WORKDIR /app

# ✅ Correct repo
RUN git clone https://github.com/gagansiwan90-sudo/WAIFU-HUSBANDO-CATCHER .

RUN pip install -r requirements.txt

CMD ["python3", "-m", "shivu"]
