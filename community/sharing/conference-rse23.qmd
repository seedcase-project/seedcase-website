---
title: "Experiences from the Research Software Engineering Conference 2023"
description: "Some thoughts and experiences learned from the Research Software Engineering Conference 2023 in Swansea, UK."
author: "Richard Ding"
date: "2023-10-18"
categories:
  - conference
  - learning
  - experiences
  - software engineering
---

I attended the [RSE Conference 2023](https://rsecon23.society-rse.org/)
hosted at
beautiful Swansea University's Bay campus and
I would love to share my experiences of it in this blog post.
This conference illuminated
three takeaways for me:

- Community growth
- The responsible handling of health data
- The power of Python tools

## RSE Community: Strengthened and Acknowledged

The RSE Conference 2023 showed that the RSE community is growing up and
getting more recognition. At this lively event, software engineers,
researchers, and data experts came together. It was a great place for
sharing knowledge and making progress in research-related software
engineering.

In the last ten years, the RSE community has been figuring out what we
do in our jobs, where we fit in, and how people can join us. This helps
make research software engineering important for society. Neil Chu
Hong's keynote presentation got us thinking about how our job can keep getting
better, bigger, and easier for people who aren't part of our group. His
talk got us talking about how our work affects everyone in society,
which was a big theme at the conference.

## Responsible Handling of Sensitive Health Data

Imagine you're a scientist working on important research about
healthcare, education, or economics. Some of this research involves
really private information, like people's medical records or financial
data. We all agree that this research is vital, but we also have to
agree on something equally important: we must keep this sensitive data
as safe as we possibly can.

To tackle this challenge, research teams have come up with something
called Trusted Research Environments (TREs). These are like special
computer spaces designed to be safe and secure, just like a
top-secret vault. But they also have to be super useful for researchers,
just like a well-equipped lab.

When we talk about sensitive data, we're talking about information that
belongs to real people – people like you and me. We call them "data
subjects". These are the folks whose data is being used for research
inside a TRE. We want them to feel safe and comfortable knowing their
information is being handled with care.

Then there are the researchers themselves – the scientists and experts
doing the work inside TREs. They need a productive space where they can
do their research effectively while following all the rules to keep the
data safe.

Finally, there are the project leaders or managers. They're the ones
responsible for making sure the research happens safely, responsibly,
and that it's actually getting results.

So, at the RSE Conference 2023, we talked about how to make these TREs
safe and productive for everyone involved. We also learned about the
Alan Turing Institute's open-source [Data Safe Haven](https://github.com/alan-turing-institute/data-safe-haven) project, which helps
with this. During the workshops, we had discussions about what makes a TRE
good or bad, what information we'd want to know before using one, and
what concerns we have about TREs.

This open discussion allowed us to see how different people – data
subjects, researchers, and project leaders – all interact with TREs. It
helped us understand the big picture of TREs and how they affect
everyone involved. Plus, our discussions will help improve the Alan
Turing Institute Data Safe Haven project, making TREs even better in the
future.

## Python Power: Tools and Applications

The conference was all about Python tools. I got to see lots of cool
tools and packages powered by Python that really amazed us.

- [Carrot-CDM](https://hdruk.github.io/CaRROT-Docs/CaRROT-CDM/About/): Carrot-CDM is a powerful Python tool designed to simplify
  the transformation of messy health datasets into the organized [OHDSI Common
  Data Model](https://www.ohdsi.org/data-standardization/) (CDM) format. Using a command line interface, it extracts
  input datasets, applies mapping rules defined in a JSON file, and then
  outputs the transformed data in TSV format, ready for loading into a
  database or another destination. Carrot-CDM's clever use of Python
  classes and a user-friendly approach makes it a valuable ally for
  research data management, helping researchers make sense of complex
  health data effortlessly.

- [Apptainer](https://apptainer.org/): Apptainer is a Python package that simplifies running
  complex applications using containers. As an open-source project,
  Apptainer boasts a welcoming community and stands out in the container
  landscape for its focus on verifiable reproducibility and security,
  streamlined integration, ease of mobility with its single-file Singularity Image Format (SIF)
  container format, and a straightforward yet effective security model.
  With Apptainer, you work inside a container as you do outside,
  ensuring a simple yet robust approach to security while harnessing the
  flexibility of Python-powered containers for your computational needs.
  Whether you're a researcher or professional in need of versatile and
  portable computational environments, Apptainer's Python-powered
  simplicity and secure design are your allies in the world of
  containerized computing.

- [scikit-Learn](https://scikit-learn.org/stable/): scikit-learn is a Python library offers a wealth of data
  analysis and machine learning tools, but one standout feature is its
  automated feature selection capability. When diving into complex
  datasets, it's often challenging to pinpoint which variables are truly
  influential for making accurate predictions. scikit-learn simplifies
  this process by automatically identifying and selecting the most
  relevant features, eliminating noise, and enhancing the precision of
  your research models. This feature is a game-changer for researchers,
  as it streamlines the data exploration process and enables more
  focused, impactful investigations. So, whether you're delving into
  healthcare analytics, economic modelling, or any data-rich domain,
  scikit-learn's feature selection empowers you to extract critical
  insights with surgical precision, elevating the quality and depth of
  your research findings.

## Conclusion: Better Software Better Research

RSEcon 2023 showed us a lot about Research Software Engineering (RSE).
We had some interesting talks that got us thinking, and we had sessions
that got into the technical details of Python tools and handling data.

As RSEs, we've figured out not just what we do but also how and why we
do it. We're responsible for keeping health data safe, and we've seen
some cool tools like Carrot-CDM and Apptainer that make our work easier.
As we go back to our jobs, let's remember to work together, be
innovative, and prioritize ethical and impactful research software
engineering. The motto 'Better Software, Better Research' isn't just
words; it's what we aim for.
