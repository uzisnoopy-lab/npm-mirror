# How It Works

```text
                    First Request

           pnpm / npm / yarn
                    │
                    ▼
              Verdaccio Mirror
                    │
        ┌───────────┴───────────┐
        │                       │
   Exists in Cache?         Doesn't exist?
        │                       │
        ▼                       ▼
   Sent to user           Fetched from npmjs.org
                                │
                                ▼
                        Stored inside Storage
                                │
                                ▼
                          Sent to user
```

After the first download, the desired version is stored on the server, and subsequent requests are served directly from Storage.

## Package Installation Process

Suppose the following command is run:

```bash
pnpm add react
```

Steps involved:

1. The request is sent to Verdaccio.
2. It checks whether the package exists in Cache.
3. If it exists, it's sent directly.
4. Otherwise, it's downloaded from the official npm Registry.
5. It's stored inside Storage.
6. It's sent to the Client.

From then on, all users will receive the same version from the Cache.

## Installing Existing Projects

If a project has a `package.json`:

```bash
pnpm install
```

Verdaccio checks all Dependencies. For each Dependency:

- If it has already been downloaded, it's installed from Cache.
- If it hasn't been downloaded, it's fetched from npmjs and then stored.

As a result, the Cache grows larger and more complete over time.