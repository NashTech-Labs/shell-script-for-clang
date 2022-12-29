## Shell Script To Run Clang 

### How To Restrict Clang Version?

```
if ! $CLANG_FORMAT --version | grep "11\.\([0-9]\+\)\.\([0-9]\+\)" >/dev/null 2>&1; then
  echo "error: wrong version of clang-format found, version 11.x.x needed"
  exit 1
fi
```

### How To Run Only On Staged .cpp Files?

```
STAGED_FILES="$(git diff --name-only --staged)"
REPO_ROOT="$(git rev-parse --show-toplevel)"

for file in $STAGED_FILES; do
  if [[ "$file" =~ \.[chi]pp$ ]]; then
    $CLANG_FORMAT -i "$REPO_ROOT/$file"
  fi
done
```