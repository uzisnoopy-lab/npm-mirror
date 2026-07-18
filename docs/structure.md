# Project Structure

```
npm_mirrors/
├── docker-compose.yml
├── Makefile
├── config/
│   └── config.yaml
├── preload/
│   ├── package.json
│   ├── packages.conf
│   └── install-packages.sh
├── storage/
├── backups/
└── plugins/
```

## docker-compose.yml

The main file for running the Docker service.

Responsibilities:

- Running the Verdaccio container
- Connecting Volumes
- Publishing the service port
- Managing the Restart Policy

## config/

This folder contains Verdaccio's settings.

```
The following items are defined in this file:

- The main npm Registry
- Access rules
- Cache settings
- Authentication settings
- Logging settings

This file is considered the core brain of the service.

## storage/

The most important folder in the project. All cached data is stored inside this folder.

Example:

```
storage/
├── react/
├── next/
├── axios/
├── express/
└── ...
```

If this folder is deleted, the entire Cache will be lost. For this reason, it must be Backed up; see [backup.md](./backup.md).

## backups/

The output of the `make backup` command. Compressed `storage/` files with a timestamp are stored here. This folder is not tracked in Git.

## plugins/

A folder for custom Verdaccio plugins. It's currently empty, and if you need custom plugins, you can place the relevant files here.