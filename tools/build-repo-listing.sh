#!/usr/bin/env bash
# Strict mode for better errors handling and failing.
# e = exit immediately with an error.
# u = treat unset variables as an error.
# o pipefail = make a pipeline fail if anywhere in the pipe something fails.
set -euo pipefail

# Prevent word splitting on spaces.
IFS=$'\n\t'

mkdir -p data

# Get the details of the repositories, to later use to include in the website.
get_website_repo_details() {
  gh repo list seedcase-project \
    --json name,description,homepageUrl,repositoryTopics \
    --visibility public \
    --no-archived \
    --source \
    --topic ${1} |
    jq
}

# Products
## Tools, including templates
get_website_repo_details product-tool > data/product-tools.json

## Docs
get_website_repo_details product-docs > data/product-docs.json

# Platform
## Tools, including templates
get_website_repo_details platform-tool > data/platform-tools.json

## Docs
get_website_repo_details platform-docs > data/platform-docs.json

# Quarto expects the data in YAML format, so we need to convert the JSON files to YAML.
for file in data/*.json;
do
  # Need to first save to a variable before writing to YAML.
  contents=$(yq -P -o=yaml $file)
  echo "$contents" > "data/$(basename "$file" .json).yaml"
done
