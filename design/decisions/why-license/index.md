---
title: "Why choose MIT License"
description: |
  Open and permissive licensing of copyrighted content is a way to increase 
  use of a software product, ease collaboration and re-use, and share
  intellectual ideas with others. The MIT License is a very permissive 
  copyright license.
author: "Kris Beicher"
date: "2023-01-12"
categories:
  - licensing
  - copyright
---

For a project like Seedcase to fully succeed in our stated mission, a
critical key to that is what our copyright license is. Without a
license, other users are not allowed to (easily) (re-)use, modify,
contribute, or enhance our software because of copyright reasons. Since
our mission isn't to just build a product, it's also to develop a
creative community around Seedcase and the topics we work on. We want
people to be able to freely and smoothly contribute enhancements and
other improvements that can be incorporated into future releases of
Seedcase. It is also our intention to make the Seedcase software
available to commercial enterprises, which means that we need to
carefully consider which license we adopt.

Below is a walk-through of the different types of licenses that we
believe we will need and a discussion on the reasons we make the choices
that we do.

## Types of licenses

The Open Source Inititative [approves](https://opensource.org/licenses)
a specific set of licenses that determine whether a project can be
called "open source". These licenses are our starting point on deciding
which license to use and how permissive we want it to be, in terms of
who can work on our code and how it can be used.

The primary license is the one that governs how our code can be used,
modified, and shared, which is described more below. It is debated
whether an open source project should employ either a Contributor
License Agreement (CLA), a Developer Certificate of Origin (DCO), or
neither of those, which we discussion below as well.

### Software license

Overall the Open Source community have licenses that work along two
strands, **permissive** and **copy-left**. Both of these 'allow software
to be freely used, modified, and shared' (see more detail on the [Open
Source Initiative](https://opensource.org/licenses) website). We will be
using the OSI's definition of free software which among other things
talk about the source code being available to download and read/study,
to allow for derived works to be created and distributed without
violating the given license.

The **Copy-Left licenses** generally state that if a third party makes
changes to the existing product, or incorporates the code alongside
another code set, then the resulting software must also be available
under the same license. This is the broadest definition of free
software, as it forces any subsequent development to be shared for free
(although most of those licenses state that you are allowed to modify
code for own use, the copy-left license only comes into play if you make
your modifications available outside your organisation). Examples of
Copy-Left licenses are EUPL-1.2, GPL, and LGPL.

The **Permissive licenses** gives you all the above mentioned rights,
but they do not enforce that you must make derived works or new works
created by taking bits of source code from the original product
available under the same license. These type of licenses are generally
seen as more friendly to commercial enterprises as they will allow
companies to use bits of code in proprietary software without having to
release the source code for free. Examples of Permissive licenses are
Apache, BSD (no matter the number of clauses), and MIT.

### CLA versus DCO

Some Open Source projects are asking contributors to sign up to a
Contributor License Agreement (CLA) or, alternatively, a Developer
Certificate of Origin (DCO).

Looking at a number of **CLA**s (in particular Threema, Meta, and
ImageWorks) it seems that these projects are mainly concerned with the
following:

-   A person submitting code that they are not the copyright holder for.
-   Withdrawal of the right to use the submitted code.
-   The need to apply for patents in future for parts or all of the
    source code.
-   A change in the type of license that the source code was given at
    the time of contribution.

There are also some agreements that touch on the subject of loss and damages which may arise from the use of a particular section of code, as well as how a request for support will be dealt with in future.

An alternative to a CLA is a Developer Certificate of Origin or DCO. The
**DCO** was first employed by the Linux Foundation in 2004, and is
basically a short document that confirms that the person contributing
code is allowed to do so, gives permission for the project to
subsequently use it, by adding a Signed-off-by line to their commit message (for an example see the [BeeWare projects DCO](https://beeware.org/contributing/how/dco/what/)).

## Our choice

It is our stated goal that the Seedcase software is available for
commercial enterprises as well as academics/healthcare organizations and
groups. Aligning with our stated Guiding Principles, we will use a
**permissive** license as it will be the best fit for the Seedcase
project. Of the permissive license types we will go with the MIT
License.

We don't yet know if it will be necessary to implement a CLA before
people outside the project are permitted to access the code. Having said
that, we will be implementing a **DCO** which future contributers will
have to agree to before making a contribution to the project.  This could be done either by checking that a commit contains the signed-off-by clause before merging it, or by implementing something like the [GitHub App DCO](https://github.com/apps/dco).  The licence text itself is available [here](https://developercertificate.org).
