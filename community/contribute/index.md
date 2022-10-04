---
title: "Overview"
---

{{< include ../../includes/_wip.qmd >}}

![Project blocks that make up the
DIF.](/images/project-blocks.svg){width="70%"}

While the core of this project is the software "Product", it depends on
the proper functioning of additional "blocks". The Product relies on the
two foundation layers, which are the "Documentation" about the Product
and its use as well as the "Culture and Collaboration" that enables both
Documentation and Product to be developed. Supporting all these layers
are the support structures that tell "How" and "Why" things are done.

## Product block

The Product only exists because of the two bottom layers and the
supports. More details about the Product are found in its own GitHub
repository (not created yet).

```{=html}
<!--
-   pipeline/ (automatic processes for tasks, like rebuilding changelog
    etc)
-   api/
-   common-data-model/setup.\*
-   common-data-model/update.\*
-   build-data-model
-   update-data-model
-   build-changelog
-   update-changelog
-   generate-data-doi
-   update-
-   Matrix/Pathways
    -   Four users
    -   Three layers
-   Connectors
    -   R
    -   Python
    -   Bash/shell
    -   RedCap
Installation

-   installing.md
-->
```
## Documentation block

This block contains multiple components, related to the overall project,
to user-friendly usage documents, to technical details about the
software itself.

For the project itself, those are found in the [About](/about/index.md)
pages or in the `about/` folder in the GitHub repository. This includes
contact, history of the project, governance, mission, and the purpose.

For the Product itself, documents describe the design and architecture,
such as the programmatic pathways between user input to the backend of
the infrastructure. These details are found in the
[Design](/design/index.md) pages (or in the `design/` folder on the
GitHub repository). Specifically:

<!-- TODO:  -->

-   design/index.md
-   design/paper.md (name?): connects all docs and sends to Zenodo for
    each "release"
-   design/overview.md
    -   values and guiding principles
    -   More detailed than the diagram and more pathways and connections
-   design/use-cases.md
-   design/architecture/frontend.md
-   design/architecture/backend.md
-   design/architecture/api.md
-   design/pathways/data-input.md
-   design/pathways/data-discovery.md
-   design/pathways/admin.md
-   design/pathways/knowledge-sharing.md

Usage, tutorials and training

-   usage/index.md: Introduction
-   usage/reference.md: Contains individual function, method, and API
    documentation (built from package docs? Or link to built package
    website?)
-   usage/getting-started/user.md
-   usage/getting-started/admin.md
-   usage/installing/\* (whole folder for instructions on installing
    indifferent environments?)
-   learn/courses/\*
    -   in-person as well as online material?
-   learn/tutorials/\*
    -   in-person as well as online material?

## Culture and collaboration block

Informal side:

-   community/blog/\*: As we learn about things, we share, new things
    found, brief training
    -   Use categories like training, knowledge, tool, etc etc

Formal side (largely undocumented/done through other channels aka
calendar, slack, Issue discussions, etc)

-   contribute/team/contributing.md
    -   how in-person events are structured and what we do or
        expectations
    -   How we work together, where we work, how plan or coordinate
    -   When we collaborate/co-work (open session and closed session?)
-   How to manage and coordinate tasks and deadlines
    -   ....?
-   formal posts (aim to publish in zenodo, and other outlets?)

## "Why" support block

This support block contains explanations and justifications for why we
choose the technologies, workflows, and designs that we do. This is not
just for the Product itself, but also for the Documentation and Culture
and Collaboration.

Files and content related to this support block are found in
`design/decisions/` and `community/contribute/decisions/` folders on the
GitHub repository.

## "How" support block

-   [Contributing guidelines](CONTRIBUTING.md): General user
    contributing
-   community/GOVERNANCE.md: Structure of organization, team, and
    ownership, how decisions are made.
-   community/CODE_OF_CONDUCT.md
    -   With contact for issues/conflicts (Annelli, otherwise go with
        Niels as independent?)
-   community/contribute/index.md: Link to CONTRIBUTING.md,
    CODE_OF_CONDUCT.md, and GOVERNANCE.md
-   community/contribute/team/conduct.md
-   community/contribute/team/contributing.md
-   community/contribute/team/events/index.md
    -   Structure of events, how often, etc.
-   community/contribute/team/events/DATE-agenda.md
-   community/contribute/team/communication.md (?)
-   community/contribute/roadmap.md
    -   milestones, gantt chart?
-   community/contribute/workflow.md (name?)
    -   When and what are tagged as releases (for both product and docs)
