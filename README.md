# Radicale Docker

[Radicale](https://radicale.org/) (CalDAV/CardDAV server) in Docker, behind Gunicorn.

## Overview
A lightweight, Dockerized setup for Radicale with auto-configured authentication and persistent storage.

## Tags
- `devtwist/radicale:stable` — latest PyPI release
- `devtwist/radicale:dev` — GitHub `master` branch

## Documentation

- **[INSTALL.md](INSTALL.md)** - Step-by-step guide on how to configure and run the server.
- **[CONTRIBUTING.md](CONTRIBUTING.md)** - Instructions for building locally, contributing code, and guidelines.
- **[TASKS.md](TASKS.md)** - Project roadmap, pending tasks, and future improvements.

## Repo layout

- `docker-compose.yml` — deployment stack
- `Dockerfile.stable` / `Dockerfile.dev` — image builds
- `entrypoint.sh` — first-run setup (creates the admin user from the secret)
- `config` — Radicale config file
- `secrets/` — password file lives here.