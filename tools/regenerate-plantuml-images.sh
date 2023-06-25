#!/usr/bin/env bash

# Regenerate all the PlantUML files in the project. Needs to have the PlantUML
# installed. Follow the instructions in `community/index.qmd`.
#
# Usage:
#
#   - In the Terminal while in the project root folder:
#       bash src/regenerate-plantuml-images.sh
#
project_folder=$(git rev-parse --show-toplevel)
plantuml_file="bin/plantuml.jar"
puml_files=$(git ls-tree --full-tree -r --name-only HEAD | cat | egrep "\.puml$")

if test -f $project_folder/$plantuml_file;
then
  for puml_file in $puml_files; do
    echo "- Regenerating image from $puml_file."
    java -jar $project_folder/bin/plantuml.jar $project_folder/$puml_file
  done
else
  echo "PlantUML doesn't exist. Please follow install instructions in community/index.qmd"
fi

