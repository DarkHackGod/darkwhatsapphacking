#!/usr/bin/env bash

# cleanup.sh
# Removes generated directories and temporary files.

set -u

remove_directory() {
    local target="$1"

    if [[ -d "$target" ]]; then
        rm -rf -- "$target"
    fi
}

remove_file() {
    local target="$1"

    if [[ -f "$target" ]]; then
        rm -f -- "$target"
    fi
}

directories=(
    "bin"
    "libs"
    "original"
    "payload"
    "tmp"
)

files=(
    "Rat.apk"
    "perms.tmp"
    "persistence.hook"
    "obfuscate.method"
    "signing.keystore"
    "backdoorhack-apk.rc"
)

for directory in "${directories[@]}"; do
    remove_directory "$directory"
done

for file in "${files[@]}"; do
    remove_file "$file"
done

exit 0
```
