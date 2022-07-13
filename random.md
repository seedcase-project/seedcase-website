## Overview of project blocks and related files

### Why

Why the technologies we choose

- design/decisions/why-*
- design/decisions/why-github.md
- design/decisions/why-python.md
- contribute/decisions/why-* (eg. why-discord.md)

### How

- CONTRIBUTING.md: General user contributing
- GOVERNANCE.md: Structure of organization, team, and ownership, how decisions are made.
- CODE_OF_CONDUCT.md
    - With contact for issues/conflicts (Annelli, otherwise go with Niels as independent?)
- contribute/index.md: Link to CONTRIBUTING.md, CODE_OF_CONDUCT.md, and GOVERNANCE.md
- contribute/team/conduct.md
- contribute/team/contributing.md
- contribute/team/events/index.md
    - Structure of events, how often, etc.
- contribute/team/events/DATE-agenda.md
- contribute/team/communication.md (?)
- contribute/roadmap.md
    - milestones, gantt chart?
- contribute/workflow.md (name?)
    - When and what are tagged as releases (for both product and docs)

### Product 


- pipeline/ (automatic processes for tasks, like rebuilding changelog etc)
- api/
- common-data-model/setup.*
- common-data-model/update.*
- build-data-model
- update-data-model
- build-changelog
- update-changelog
- generate-data-doi
- update-

- Matrix/Pathways
    - Four users
    - Three layers
- Connectors
    - R
    - Python
    - Bash/shell
    - RedCap
    
### Documentation

What it is about, mission, and purpose

- about/index.md
- about/mission.md
    - Values as well: eg. clear over concise
- about/contact.md
- about/governance.md (link to GOVERNANCE.md?)

Installation

- installing.md

Design and architecture (pathways will have all use cases, how user interacts with
product, computational steps taken from user interaction) (as its own repo?)

- design/index.md
- design/paper.md (name?): connects all docs and sends to Zenodo for each "release"
- design/overview.md
    - values and guiding principles
    - More detailed than the diagram and more pathways and connections
- design/diagram.png (svg, etc)
- design/architecture/frontend.md
- design/architecture/backend.md
- design/architecture/api.md
- design/pathways/data-input.md
- design/pathways/data-discovery.md
- design/pathways/admin.md
- design/pathways/knowledge-sharing.md
    
Usage, tutorials and training

- usage/index.md: Introduction
- usage/reference.md: Contains individual function, method, and API documentation 
(built from package docs? Or link to built package website?)
- usage/getting-started/user.md
- usage/getting-started/admin.md
- usage/installing/* (whole folder for instructions on installing indifferent environments?)
- learn/courses/*
    - in-person as well as online material?
- learn/tutorials/*
    - in-person as well as online material?

### Culture and collaboration

Informal side:

- blog/*: As we learn about things, we share, new things found, brief training
    - Use categories like training, knowledge, tool, etc etc

Formal side (largely undocumented/done through other channels aka calendar, slack, Issue discussions, etc)

- contribute/team/contributing.md
    - how in-person events are structured and what we do or expectations
    - How we work together, where we work, how plan or coordinate
    - When we collaborate/co-work (open session and closed session?)
- How to manage and coordinate tasks and deadlines
    - ....?
- formal posts (aim to publish in zenodo, and other outlets?)
        
## Steps

1. How to work together effectively and optimally
    - CONTRIBUTING
        - Workflow (Github)
        - When we work together, how often
        - Which communication channels? (Discord/Slack/Zoom/etc)
    - GOVERNANCE
        - e.g. in general I'm responsible for overall plan and structure of project
        but that doesn't mean others don't get decision. We work as a team,
        each with areas of responsibilities but we all have a stake in this.
    - CODE OF CONDUCT   
        - How do we want to work together and behave.
        - How to resolve conflict.
2. How to share knowledge and skills learned and experiences (inside and outside of team) (-docs)
    - blog/*
3. Design, architecture, and technologies (-docs)
    - design.md
    - architecture/api.md
        - decisions/why-rest-api.md
        - decisions/why-django-or-flask.md
    - architecture/backend.md
        - decisions/why-sqlite-or-parquet.md
    - architecture/frontend.md
        - decisions/why-...

## Questions

- Name for the product?
- Do we make a new GitHub org or use steno-aarhus?
- How many repos?
    - one for product
        - including product docs, reference docs, general usage, etc
        - gh-pages/built docs as website, but not part of installation
    - one for website/docs
- Multiple packages or one single one?
