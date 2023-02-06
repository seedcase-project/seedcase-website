# Team Contributing Guidelines

## Communication across team and collaborators

Our general philosophy is to limit meetings and emails as much as is
appropriate, and instead use text-based forms of communication. For
shorter or quick questions, we use our Discord channel. For longer
discussions, we use GitHub Issues. And for help or sharing information,
we use blog posts that we add to the website.

No matter which communication channel is used, we write in Markdown
format, though Discord uses a limited set of Markdown features.

## Guide to the general workflow

-   When adding or modifying content on either the website or the
    product itself, we follow the "branch-pull request" workflow. This
    is described in more detail in the [GitHub
    Flow](https://docs.github.com/en/get-started/quickstart/github-flow)
    page.
-   When working on project, run `bash src/pr/reformat-markdown.sh` in
    your branch before pushing to convert Markdown into canonical
    format.

## Guide to admin tasks

-   With the Seedcase product, Git tags and releases are added fairly
    regularly. On the other hand, with the website, we only tag a
    version of the website after a major "milestone" or deadline. For
    instance, after sending the design documents to get reviewed or when
    sending an update document to our funder or stakeholders.
