FROM python:3.11-slim AS builder
WORKDIR /app
COPY pyproject.toml poetry.lock ./
RUN pip install --no-cache-dir poetry==2.1.3 \
 && pip install --no-cache-dir poetry-plugin-export \
 && poetry export -f requirements.txt --output reqs.txt --without-hashes

FROM python:3.11-slim
WORKDIR /app
COPY --from=builder /app/reqs.txt .
RUN pip install --no-cache-dir -r reqs.txt
COPY src/ ./src
CMD ["uvicorn","src.main:app","--host","0.0.0.0","--port","8000","--workers","1"]
