FROM python:3.8-slim-buster

ENV PIP_NO_CACHE_DIR=1

RUN apt update && apt install -y --no-install-recommends \
    bash \
    bzip2 \
    curl \
    git \
    util-linux \
    libffi-dev \
    libjpeg-dev \
    libwebp-dev \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    libssl-dev \
    gcc \
    sqlite3 \
    libsqlite3-dev \
    zlib1g \
    ffmpeg \
    wget \
    unzip \
    jq \
    libopus0 \
    libopus-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools

WORKDIR /root

RUN git clone https://github.com/Mynameishekhar/ptb
WORKDIR /root/ptb

RUN pip install -r requirements.txt

CMD ["python3", "-m", "shivu"]
