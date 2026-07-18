# Setup for Teams (Central Server Pattern)

The setup described in [getting-started](./getting-started.md) is sufficient for running locally on a single system, but the recommended pattern for a team is not for each team member to spin up their own service and Cache separately.

## Why a Central Server?

- Only one person (or one CI Job) needs to run `make preload`; the rest of the team just configures the Registry to point to that same server.
- The Cache is shared among all members; whatever one person downloads becomes available to everyone else.
- Management, Backup, and updates are all handled in a single place.

## How to Set It Up

1. On an internal team server (e.g., a VPS or a server inside the company network), bring up the project following [getting-started](./getting-started.md):

```bash
git clone https://github.com/cipherunits/npm-mirror
cd npm-mirror
make up
make preload
```

2. Make sure port `4873` is accessible from the team's internal network (not just `localhost`).

3. Each team member only needs to run this command on their own system:

```bash
npm config set registry http://<team-server-address>:4873
```

## Notes

- The central server is a sensitive point (Single Point of Failure); be sure to enable [periodic Backups](./backup.md).
- For a faster Cache start, use [Preload with a Profile suited to the team's stack](./preload.md) (e.g., `make preload PROFILE=frontend`).
- Use `make status` to check the server's health.