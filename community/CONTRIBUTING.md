---
title: Contributing Guidelines
listing:
  - id: guide-entries
    contents: guide-entries
    type: default
    sort: "title"
    categories: true
    fields: 
      - "title"
      - "author"
      - "description"
      - "date"
  - id: decisions
    contents: decisions
    type: default
    sort: "title"
    categories: true
    fields: 
      - "title"
      - "author"
      - "description"
      - "date"
---

{{< include /includes/_wip.qmd >}}

## Creating PlantUML images

You need the Java binary for PlantUML in order to create images from the
`.puml` files. PlantUML requires Java and Graphviz:

1.  Install
    [Java](https://www.java.com/en/download/help/download_options.html).
2.  Install [Graphviz](https://graphviz.org/download/).
3.  Install [GitHub CLI](https://cli.github.com/manual/installation).

Then download the PlantUML program by running this command in the
project root directory (`seedcase-project/`).

``` bash
mkdir -p bin
gh release --repo plantuml/plantuml download --clobber -p "plantuml.jar" -D bin/
```

Creating images is then done by running (again in the project root
folder of `seedcase-project/`) the command below, replacing `*` with the
`.puml` file.

``` bash
java -jar bin/plantuml.jar design/images/*.puml
```

<!-- TODO: Add link to the teams/index.qmd instructions? -->

## Individual guide entries

These entries are small pages about a specific topic for contributing
and anyone can submit an entry to be added (or modify an existing one).

::: {#guide-entries}
:::

## Decisions on choices

For transparency and recordkeeping, we try to document and explain why
we make the decisions we make when it comes to building and organizing
the community.

::: {#decisions}
:::

