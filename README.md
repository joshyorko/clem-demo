# Simple Rancher Versions App

Simple app to show all the latest versions of Rancher applications.

The container now listens on port `80` by default so it works with deployment systems that expect the app to serve HTTP on `80`.

The app also exposes a lightweight health endpoint at `/up` that returns HTTP `200`.

For local Docker usage, `docker-compose.yml` maps host port `5000` to container port `80`, so the app is still available at `http://localhost:5000`.

If you run the app directly with Python instead of Docker, override the port explicitly:

```bash
PORT=5000 python3 app.py
```

`GITHUB_TOKEN` needs to be set if GitHub is rate limiting you.
