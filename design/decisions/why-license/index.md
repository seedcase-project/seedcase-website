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

# Which licenses are we using

For a project like seedcase to succeed there needs to be a few licenses
in place before we broaden our scope beyond our immediate project team.
First of all because without an overall license other users are not
allowed to use, try, test, or enhance our software because of copyright,
and second, we hope to develop a creative community around seedcase
where people are free to contribute enhancements and branches to
incorporate into future releases. It is also our intention to make the
seedcase software available to commercial entities which does mean that
we will need to carefully consider which license we adopt.

Below is a walk-through first of the types of licenses that we believe
we will need, and second a discussion of the choices that we have made.

## Types of licenses

As an Open Source project there are a number of different licenses that
we can draw on when it comes to deciding exactly how permissive we would
like to be in terms of who can work on our code and how it can be used.

The primary license is the one that governs how our code can be used,
modified, and shared. The options for this is described below under the
section 'Software license'. It is debated whether an open source project
should employ either a Contributor License Agreement (CLA), a Developer
Certificate of Origin (DCO) or neither of those. These types of
agreements are described in detail in the section 'CLA versus DCO'
below.

### Software license

Overall the Open Source community have licenses that work along two
strands, **permissive** and **copy-left**. Both of these 'allow software
to be freely used, modified, and shared.' (see more at the [Open Source
Initiative](https://opensource.org/licenses)). We will be using the
OSI's definition of free software which among other things talk about
the source code being available to download and read/study, to allow for
derived works to be created and distributed without violating the given
license.

The licenses we have looked falls into two categories as mentioned
above, the permissive and the copy-left.

The **Copy-Left licenses** generally states that if a third party makes
changes to the existing product, or incorporates the code alongside
another code set then the resulting software must also be available
under the same license. This is the broadest definition of free
software, as it forces any subsequent development to be shared for free
(although most of those licenses state that you are allowed to modify
code for own use, the copy-left license only comes into play if you make
your modifications available outside your organisation). Examples of
Copy-Left licenses are EUPL-1.2, GPL and LGPL.

The **Permissive licenses** gives you all the above mentioned rights,
but they do not enforce that you must make derived works or new works
created by taking bits of source code from the original product
available under the same license. This type of license are generally
seen as more friendly to commercial entities as they will allow
companies to use bits of code in proprietary software without having to
release the source code for free. Examples of Permissive licenses are
Apache, BSD (no matter the number of clauses), and MIT.

### CLA versus DCO

Some Open Source projects are now asking contributors to sign up to a
Contributor License Agreement (CLA) or, alternatively, some are asking
potential contributors to sign a Developer Certificate of Origin (DCO).

Looking at a number of **CLA**s (in particular Threema, Meta, and
ImageWorks) it seems that these projects are mainly concerned with the
following: A participant submitting code they are not the copyright
holder for. Withdrawal of the right to use the submitted code. The need
to apply for patents in future for parts or all of the source code.
And/or a change in the type of license that the source code was given at
the time of contribution. There are also some that touch on the subject
of loss and damages which may arise from the use of a particular section
of code, as well as how a request for support will be dealt with in
future.

An alternative to a CLA is a Developer Certificate of Origin or DCO. The
**DCO** was first employed by the Linux Foundation in 2004, and is
basically just a short document that confirms that the person
contributing code is allowed to do so, and happy with the project to
subsequently use it, and it is using a git commit to do so.

## Our choice

It is our stated goal that the seedcase software is available for
commercial companies as well as academics/healthcare professionals. We
therefore believe that a **permissive** license will be the best fit for
the seedcase project. Of the permissive license types we will go with
the MIT style license.

We don't believe that it will be necessary to implement a CLA before
people outside the project are permitted to access the code. Having said
that, we will be implementing a **DCO** which future contributers will
have to agree to before making a contribution to the project.
