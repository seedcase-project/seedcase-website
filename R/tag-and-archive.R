# library(tidyverse)
library(here)
library(gert)

# This script was used to generate the HTML file of the application from an
# older version of the repository when it used distill to create the HTML.
# Now it uses Quarto instead.

# Generate HTML of application for archiving -------------------------------
# 1. Comment out the d-title element in the theme.css
# 2. Comment out the navbar in the _site.yml

rmarkdown::render(
    here("index.Rmd"),
    output_format = distill::distill_article(self_contained = TRUE, toc = TRUE, toc_float = FALSE),
    output_file = here("nnf-dif-application.html")
)

# Then add and commit to the Git repo.

repo_version <- "v2021.05.04"
version_tag <- git_tag_create(
    name = repo_version,
    message = "Grant application submitted to Novo Nordisk Foundation for the Data Science Infrastructure funding. This is the version submitted to NNF, even though the tag date is off by a year."
)
git_push()
git_tag_push(repo_version)
if (interactive()) browseURL("https://github.com/steno-aarhus/seedcase-project/releases/new")

# This is for when we upload to Zenodo
# tag_archive_file <- str_c("seedcase-project", repo_version, ".zip")
# git_archive_zip(tag_archive_file)

# zenodo <- ZenodoManager$new(
#     # url = "https://sandbox.zenodo.org/api",
#     url = "https://zenodo.org/api",
#     logger = "INFO",
#     token = askpass::askpass()
# )
