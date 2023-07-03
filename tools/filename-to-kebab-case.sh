#!/usr/bin/env bash
#
# Converts filenames to `kebab-case`.
#
for file in $(git diff --name-only --relative main... | cat); do
    mv -v "$file" "$(echo $file | sed -e 's/\([A-Z][a-z]\)/-\L\1/g' -e 's/^.\/-//' -e 's/\(.\)_/\1-/g')"
done
