# Contributing Guide

We welcome contributions to this project! This document outlines how you can build the images locally and contribute to the repository.

## Building Images Locally

If you prefer to build the images yourself instead of pulling them from the registry, or if you are testing modifications to the Dockerfiles:

```bash
# Build the stable version
docker build -t devtwist/radicale:stable -f Dockerfile.stable .

# Build the dev version
docker build -t devtwist/radicale:dev -f Dockerfile.dev .
```

After building, you can start the stack normally with `docker compose up -d`.

## Development Guidelines

- **Code Style**: Please ensure any changes to `entrypoint.sh` or Dockerfiles follow standard best practices.
- **Testing**: Test your changes against both the `stable` and `dev` tags before submitting a pull request.
- **Issues**: If you find a bug or have a feature request, please open an issue in the repository first.

## Submitting a Pull Request

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes with clear, descriptive commit messages.
4. Push your branch and open a Pull Request against the main branch.
