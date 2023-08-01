---
title: Design of Seedcase
---

{{< include ../includes/_wip.qmd >}}

## Purpose

A software's architecture that is well documented and described is (or
should be) the first place to look when trying to understand it and how
it works. The design documentation is a way of providing an overall map
of the software itself (or its output) without getting into highly
specific technical detail as well as communicating the goals, general
structure, requirements, and uses of the software to both technical and
non-technical people.

## Reader

We've written these documents considering a few people in mind who will
read the documents:

-   **New contributors/team members**: The most important reason we have
    written design documentation is to quickly onboard new contributors
    or team members to the project. We assume that they will likely read
    all sections. Almost all of the documentation we write with these
    readers in mind.
-   **Other research software/data engineers**: These readers will be
    interested in the much more technical aspects of the design
    documentation, potentially for their own purposes, for learning, or
    for modifying Seedcase for their own project. We assume they will
    read mostly the sections that get into the core details of Seedcase,
    so we write these sections with these readers also in mind. These
    readers also include external consultants who will act as expert
    reviewers of Seedcase.
-   **Technical stakeholders**: These are people, such as in IT units,
    that have more technical knowledge and who are potentially involved
    in approving software and helping with installing it. They are also
    likely involved in dealing with any server-based errors that might
    occur with Seedcase, as well as any other software. They might read
    the introduction sections as well as the slightly more detailed
    sections, but likely not at the level of the previous two readers.
-   **Non-technical stakeholders**: This reader is any person who is
    interested in understanding Seedcase at more than a "How To Install"
    and "How To Use" level, for instance to learn if Seedcase is
    relevant for their work. This reader also includes our external
    partners or those who want to learn a bit more about Seedcase after
    we've presented or advertised it. We assume they will read mostly
    the introduction and first few sections, so we try to write these
    sections with them in mind.

## Contents

While Seedcase is software, it also interacts with data, so we have
written two core parts in mind:

-   A [software architecture](software-architecture/index.qmd) document,
    which is based on the [arc42](https://arc42.org) template and the
    [C4 Model](https://c4model.com/)
-   A data architecture document, which is a work-in-progress
