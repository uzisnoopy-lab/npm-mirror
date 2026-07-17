while IFS= read -r package; do
  [ -z "$package" ] && continue
  echo "Installing: $package"
  npm install --no-save --ignore-scripts "$package" || echo "Failed: $package"
done < packages.txt