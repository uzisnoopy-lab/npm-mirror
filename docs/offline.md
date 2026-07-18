# Behavior During Internet Outages

Suppose this project has already been installed:

```bash
pnpm install
```

and all Dependencies have been placed inside the Cache.

If the internet goes down:

```bash
pnpm install
```

will run without needing the internet. The only condition is that the required version has already been stored inside the Cache.

## Important Notes

### Do not delete Storage

The Storage folder contains the entire system's Cache. Deleting it is equivalent to re-downloading all packages.

### Updating packages

Verdaccio only stores versions that users have requested. No package is downloaded automatically.