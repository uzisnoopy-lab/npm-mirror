# Preloading Packages

To preload all packages listed in `preload/packages.conf`:

```bash
make preload
```

or manually:

```bash
cd preload
chmod +x install-packages.sh
./install-packages.sh
```

## preload Folder Structure

```
preload/
├── package.json
├── packages.conf
└── install-packages.sh
```

### packages.conf

A list of packages to be preloaded, with each line in this format:

```
next@13                             #tags: frontend,framework
```

Adding or removing a package is done simply by editing this file; no changes to the script or Makefile are needed.

## Profiles

Each package has one or more tags (`frontend`, `backend`, `mobile`, `desktop`, `tooling`, `testing`, `database`, ...). Using the `PROFILE` variable, you can preload only the packages with a specific tag:

```bash
make preload PROFILE=frontend
make preload PROFILE=backend
make preload PROFILE=mobile
```

If `PROFILE` is not specified, the default value is `all`, and all packages are installed.

The complete list of available tags is documented at the top of the `packages.conf` file.

## Incremental Preload

If you run `make preload` again, by default all packages are checked again (because Verdaccio itself doesn't re-download packages already in Storage, but the script by default sends an install request for all of them). To have the script itself also skip packages that have already been successfully processed:

```bash
make preload INCREMENTAL=1
```

The status of installed packages is kept in the `preload/.preload-state` file (not tracked in Git). To start over from scratch, delete this file.

### Combining Profile and Incremental

```bash
make preload PROFILE=frontend INCREMENTAL=1
```