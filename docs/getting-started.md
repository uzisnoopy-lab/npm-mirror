# Installation and Setup

## Prerequisites

- Docker
- Docker Compose
- Make

## 1. Clone the project

```bash
git clone https://github.com/MohammadTahaBatoomi/npm-mirror
cd npm_mirrors
```

## 2. Run the service

```bash
make up
```

## 3. Check the status

```bash
make ps
```

or

```bash
make logs
```

## 4. Access the Registry

Once running, the Registry is accessible at the following address:

```
http://localhost:4873
```

## Makefile Commands

```
make up        - Start Verdaccio
make down      - Stop Verdaccio
make restart   - Restart Verdaccio
make logs      - Follow logs
make ps        - Show container status
make build     - Recreate container
make pull      - Pull latest image
make clean     - Remove container
make reset     - Remove container and storage
make shell     - Open shell inside container
make preload   - Start install package
```
