# Installation Guide

This guide covers the prerequisites and steps required to install and run the Radicale Docker service.

## Prerequisites

- **Docker**: Must be installed on your system. [Get Docker](https://docs.docker.com/get-docker/)
- **Docker Compose**: Required to use the provided stack configuration. [Install Docker Compose](https://docs.docker.com/compose/install/)

## 1. Get the Project

Ensure you are in the directory containing the project files. If you are cloning this from a repository:

```bash
git clone git@github.com:liad-technion/radicale.git
cd radicale
```

## 2. Configure Credentials

Before starting the container, you must configure the initial administrator password. An example file is provided in the `secrets` directory.

Copy the example file and update it with your desired password:

```bash
cp secrets/radicale_password.txt.example secrets/radicale_password.txt
# Now edit secrets/radicale_password.txt with your secure password
```

*(Note: The default username is `admin`. If you wish to change it, edit the `RADICALE_USERNAME` environment variable inside `docker-compose.yml`.)*

## 3. Start the Service

Start the service in detached mode (running in the background) using Docker Compose. By default, this will pull and use the `stable` image tag.

```bash
docker compose up -d
```

### Alternative: Using the Dev Version
If you want to run the latest development build:

```bash
RADICALE_TAG=dev docker compose up -d
```

## 4. Verify the Installation

Once the container is running, open your web browser and navigate to:

**http://localhost:8000**

Log in using your configured username (`admin` by default) and the password you created in step 2.

## Customizing

| What | Where |
|---|---|
| Admin username | `RADICALE_USERNAME` in `docker-compose.yml` (default: `admin`) |
| Admin password | `secrets/radicale_password.txt` |
| Radicale settings | `config` (mounted read-only) |
| Stored data | `radicale-data` Docker volume |
