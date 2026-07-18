# Backup and Restore

The `storage/` folder is your only source of Cache. Losing it means having to download all packages again from scratch. For this reason, especially when you're using the "shared central server" pattern (see [team-setup](./team-setup.md)), taking periodic Backups is essential.

## Taking a Backup

```bash
make backup
```

This command creates a compressed file named `backups/storage-YYYYMMDD-HHMMSS.tar.gz`.

It's recommended to set up this command as a daily or weekly Cron Job on the server, for example:

```bash
# Every night at 3 AM
0 3 * * * cd /path/to/npm-mirror && make backup
```

You can also copy the files inside `backups/` to an external destination (such as another disk or Cloud Storage) so that data remains available even if the entire server is lost.

## Restore

```bash
make restore FILE=backups/storage-20260718-030000.tar.gz
```

This command:

1. Stops the Verdaccio service
2. Deletes the current `storage/` folder
3. Extracts the selected Backup
4. Brings the service back up

## Checking Server Health

```bash
make status
```

This command shows the container status, Registry availability, and the current size of `storage/`. You can use it for simple monitoring or manual alerting.