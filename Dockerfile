FROM python:3.10-slim

ENV PIP_NO_CACHE_DIR=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# System deps (only what’s реально needed)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    unzip \
    ffmpeg \
    gcc \
    libffi-dev \
    libjpeg-dev \
    libwebp-dev \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    libssl-dev \
    zlib1g \
    sqlite3 \
    libsqlite3-dev \
    libopus0 \
    libopus-dev \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip tools
RUN pip install --upgrade pip setuptools wheel

# Set working dir
WORKDIR /app

# Clone repo
RUN git clone https://github.com/Mynameishekhar/ptb .

# Install Python deps
RUN pip install -r requirements.txt

# Run bot
CMD ["python3", "-m", "shivu"]
