#!/bin/sh

# This script is used to help build the roadmap documentation. It goes through
# all the seedcase-project repositories and gets the URL, repo name, and
# description to create a Markdown link with that information. The form looks
# like:
#
#       [`repo-name`](url): description
#

# Get the list of repositories in the form of `repo-1 repo-2`
repo_list=$(gh repo list seedcase-project --json name --template '{{range .}}seedcase-project/{{.name}}{{"\n"}}{{end}}')
repo_list="${repo_list} rostools/r-pkg-intro rostools/git4cats steno-aarhus/research-ops"

for repo in $repo_list
do
  gh repo view $repo --json description,name,owner,url --template '[`{{.owner.login}}/{{.name}}`]({{.url}}): {{.description}}'
done
