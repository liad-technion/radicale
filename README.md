# Radicale Docker

[Radicale](https://radicale.org/) (CalDAV/CardDAV server) in Docker, behind Gunicorn.

## Tags
- `devtwist/radicale:stable` — latest PyPI release
- `devtwist/radicale:dev` — GitHub `master` branch

## Quick start

**1. Set the admin password.** On first run, the entrypoint reads this file and creates the `admin` user from it.

```bash
echo "your_password" > secrets/radicale_password.txt
```

**2. Start the server.** Pulls the image from Docker Hub and runs it in the background. Defaults to the `stable` tag; set `RADICALE_TAG=dev` to use the dev image instead.

```bash
docker compose up -d
# or, for the dev image:
RADICALE_TAG=dev docker compose up -d
```

**3. Open the app.** Radicale is now listening on port 8000.

Go to http://localhost:8000 and log in as `admin` with the password from step 1.

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