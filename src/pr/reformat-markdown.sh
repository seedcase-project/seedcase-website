#!/usr/bin/env bash

# This script finds any modified Markdown files in the branch
# (relative to main) and reformats them to "canonical" Markdown
# format.
for file in $(git diff --name-only --relative main... | cat); do
  echo "- The file '$file' was modified in this branch."
  if [[ $file =~ \.[qRr]?md$ ]]; then
    # https://github.com/rstudio/rstudio/blob/4f7063b13bb0bae8377639a36d3ff4b7626de6e3/src/gwt/panmirror/src/editor/src/pandoc/pandoc_converter.ts#L90
    pandoc \
      --from markdown-smart+yaml_metadata_block+raw_attribute+blank_before_header \
      --standalone \
      --markdown-headings=atx \
      --wrap=auto \
      --columns=72 \
      --to markdown-smart+yaml_metadata_block+raw_attribute+blank_before_header \
      -o $file \
      $file
    echo "  - '$file' was reformatted to canonical markdown."
  fi
done
