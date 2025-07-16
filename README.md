# Harbour-Session-11

This folder contains a **FastAPI classifier** with built-in Prometheus metrics, plus two Fly.io deployment options and a local monitoring stack.
1. **Declarative:** edit `fly.toml`, then run `fly deploy --remote-only` to build & roll out in one click.
2. **Imperative:** `docker build -t registry.fly.io/<app>:v1 .` → `docker push …` → `fly machine run …` for instant, one-off VMs.
3. **Local monitoring:** `docker compose up --build` starts the app + Prometheus + Grafana
Happy shipping!