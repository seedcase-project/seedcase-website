---
title: "Why choose containerization technology"
description: |
  Containers are a way to bundle a software's environment to simplify
  development, installation, and dependency management.
author: "Richard Ding"
date: "2022-12-10"
categories:
  - containers
  - installation
  - software
  - tools
  - technology
---

## What is Containerization

Containerization is the technology of packaging software development
code along with all of its necessary dependencies or configurations,
including as libraries, frameworks, and other dependencies, into a
single, isolated "container." The software or application inside the
"container" can be transported, deployed and used reliably in any
environment and on any infrastructure, regardless of the operating
system. The container functions as a sort of computing environment or
bubble around the software or application, keeping it apart from the
actual computing environment. It make moving or deploying the software
or application to any new computing environment less complicated.

## Benefit of Containerization

### Lightweight/Portable

Containers are "lightweight" since they can share the operating system
kernel of the host computing environment. Containers also do not require
additional overhead to run the full virtual operating system, which
increases system resource utilisation. It outperforms virtual machine
technology in terms of application execution speed, memory consumption,
and data storage speed.

### Fast startup time

Traditional virtual machines frequently require server minutes to start
all services before they are ready for use. Because containers run
directly on the host computing environment's kernel and do not require
the startup of any operating system, startup time is measured in
seconds.

### Improved security

Containers are isolated from one another, you can be sure that each of
your apps is executing in a completely separate environment. Therefore,
even if the security of one container is compromised, that host's other
containers are still protected.

Containers can only interact with computational resources in a very
limited way and are segregated from each other as well as the host
operating system. All of this adds up to a method of deploying apps that
is intrinsically more secure.

### Flexibility

Containers may be quickly created, deployed to any environment, and
utilised to address a wide range of requirements. You may rapidly create
a container to handle a task when it arises. You can set it to
automatically shut down if it is no longer required till it is. This
method is called orchestration. The process of organising, controlling,
scaling, and deleting containers can be achieved very easily.

### Ease of Management

Containers all run independently, so if one fails, the others will
continue to run. Development teams gain the ability to fix errors in one
container without affecting others.

### Developer-Friendly

Containers are developer-friendly because they allow developers to use a
single environment for development and production, which is a common
roadblock in application development. The development team may create an
app on a Windows laptop that does not run on a Mac workstation. But the
containerized application won't run into that issue anymore.
