# Radicale Docker

[Radicale](https://radicale.org/) (CalDAV/CardDAV server) in Docker, behind Gunicorn.

## Tags
- `devtwist/radicale:stable` — latest PyPI release
- `devtwist/radicale:dev` — GitHub `master` branch

## Quick start

```bash
echo "your_password" > secrets/radicale_password.txt
docker compose up -d
```

Open http://localhost:8000 — log in as `admin` with the password above.

To use the dev image: `RADICALE_TAG=dev docker compose up -d`

## Customizing

| What | Where |
|---|---|
| Admin username | `RADICALE_USERNAME` in `docker-compose.yml` (default: `admin`) |
| Admin password | `secrets/radicale_password.txt` |
| Radicale settings | `config` (mounted read-only) |
| Stored data | `radicale-data` Docker volume |

## Repo layout

- `docker-compose.yml` — deployment stack
- `Dockerfile.stable` / `Dockerfile.dev` — image builds
- `entrypoint.sh` — first-run setup (creates the admin user from the secret)
- `config` — Radicale config file
- `secrets/` — password file lives here