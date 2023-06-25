#!/usr/bin/env bash

# This script finds any modified Markdown files in the branch (relative to main)
# and reformats them to "canonical" Markdown format. Can be used on it's own or
# used for the GitHub Pull Request command `/reformat_markdown` (managed in
# `.github/workflows/pr-commands.yaml`).
#
# See `team.seedcase-project.org` for more details on using this
# script.
#
# Usage:
#
#   - From the Terminal and in the parent folder:
#       bash src/pr/reformat-markdown.sh
#   - From GitHub in a Pull request as a comment:
#       /reformat_markdown
#
for file in $(git diff --name-only --relative main... | cat | egrep "\.[qRr]?md$"); do
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
  echo "- '$file' was modified in this branch and has been reformatted to canonical markdown."
done
