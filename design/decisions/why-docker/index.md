---
title: "Why Docker as our container software"
description: |
  While there are several container technologies, Docker is one of the
  most popular and commonly used technologies.
author: "Richard Ding"
date: "2022-12-14"
date-modified: last-modified
categories:
  - container
  - software
  - tools
  - technology
  - software-architecture
---

## Introduction

When considering container technologies, Docker is by far the most
well-known and popular container platform in use today. However, there
are different platforms on the market, each with unique approaches and
use cases. Even though all have a similar concept of images and
containers, there are some technical differences worth noting.

## Comparison of technologies

### Docker

Docker is without a doubt the most popular container
application/platform. According to Stack Overflow's [2020 Developer
Survey](https://insights.stackoverflow.com/survey/2020), which included
almost 65,000 respondents, Docker was the second most popular platform
among developers, trailing only Linux.

Docker is incredible in many ways. It is a developer-friendly open
source platform that can be used for rapid application development and
is complemented by outstanding documentation, which is a major reason
for its popularity.

Docker employs the client-server architecture, which entails clients
requesting and receiving services from a host, in this case, the Docker
daemon. Any contact with Docker may be initiated by the Docker client
via an API call. The Docker client can communicate with many docker
daemons. Any API queries performed by the Docker client are then
received by the Docker daemon. The daemon is in charge of constructing,
executing, and distributing your Docker containers and is responsible
for the majority of the heavy work. This client-server architecture add
one extra security layer to isolate the content inside the container
from the outside environment.

### Podman

Podman is an open-source, Linux-native tool designed to develop, manage,
and run containers and pods under the Open Container Initiative (OCI)
standards. Presented as a user-friendly container orchestrator developed
by Red Hat.

Podman is a daemonless container engine that enables users to create,
manage, and run OCI Containers on the Linux system. Podman, like Docker,
is an open source project. The program's source code is available to
anyone. Podman, unlike Docker, does not require a daemon process to
launch and manage containers. This is a significant distinction between
the two projects.

The ability to run both root and rootless containers is also Podman's
main advantage. As a single point of failure, a daemon is not used.
Compared to their root container counterparts, operating rootless
containers is viewed by some as improving system security.

### rkt

rkt, like other container technologies, lets you separate your software
from its surroundings. However, rkt provides adjustable isolation,
allowing you to choose the appropriate amount of isolation utilising
rkt's pluggable runtime architecture, which is divided into different
phases.

rkt also includes security measures like a signature verification by
default and even privilege separation, which is in charge of retrieving
and validating signatures as unprivileged users. Having these
characteristics can help to mitigate the potential damage caused by
unforeseen vulnerabilities.

The rkt is not a complete platform, end-to-end solution. It is instead
utilised in conjunction with other technologies or in substitute of
particular Docker system components.

### Hyper-V

Because each container can run its own kernel, Hyper-V containers are
more closely aligned with the VM virtualization model. Because
applications running within them do not need to be compatible with the
host system, they are more portable than traditional containers. They
also provide improved security due to greater isolation from the host
operating system and other container environments. These advantages,
however, come with a cost: Hyper-V containers have a slightly larger
infrastructure footprint than Windows and other containers that rely on
a shared kernel-based system.

The biggest disadvantage of the Hyper-V is that each guest environment
must be based on Windows, though it might not have been the same version
as the host.

## Conclusion

After researching the container platform on the market, Docker still is
the best option for Seedcase. First of all, Docker has the world's
largest repository of container images that allow Docker users to
create, test, store and distribute containers. Secondly, Docker is a
single, robust, and autonomous tool. Docker manages, runs, builds, and
does all other container-related tasks independently of any other
third-party tools. Lastly, Docker has a lengthy history of working with
well-known cloud platforms like AWS and GCP. It is also compatible with
Microsoft, Azure, and OpenStack. Overall, regardless of how great the
alternatives are, Docker is still a viable option.
