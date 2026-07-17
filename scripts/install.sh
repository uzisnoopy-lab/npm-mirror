#!/usr/bin/env bash

while read package; do
  echo "Installing $package"
  npm install --no-save "$package" || true
done < ../preload/packages.txt