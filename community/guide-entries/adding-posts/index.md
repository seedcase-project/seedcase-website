---
title: "How to add post entries"
description: "Instructions on how to add post entries to Quarto-based websites."
author: "Luke W. Johnston"
date: "2022-10-31"
categories:
  - contributing
  - blogs
  - writing
  - workflow
---

Compared to blog/website generators of the past and of many current
ones, adding a post to this [Quarto](https://quarto.org/) website is
relatively straight-forward. For now, I'll focus on adding a post to the
Community section of the website, though these principles apply to any
post/collection we use throughout this site (e.g. the [Community
Contributing Guide Entries](/community/CONTRIBUTING.md#guide-entries) is
a collection of post entries).

There are two ways to add a post:

1.  Cloning the
    [`seedcase-project`](https://github.com/seedcase-project/seedcase-project)
    GitHub repository to your computer
2.  Creating and writing directly inside the GitHub repository

If you contribute often to the project, going the first route is highly
recommended. But if its only a quick thing or you are an infrequent
contributor, then the second might make more sense for you.

Regardless, in both routes the steps are:

1.  Create a new folder/directory inside `community/posts/` with a short
    name the describes the post. For instance, this post's directory
    name is `adding-posts/`. Inside the newly created directory, create
    a file called `index.md`.

2.  Open up the new file and add the below metadata to the top of the
    file. This is called the YAML header.

    ``` yaml
    ---
    title: ""
    description: ""
    author: ""
    date: ""
    categories:
      - ""
    ---
    ```

3.  Edit the YAML metadata but putting the title of your post inside the
    brackets of `title: ""`. Do the same for `description` (a one or two
    sentence overview of your post content), `author` (your full name),
    and `date` (in the form of `YYYY-MM-DD` like `2022-10-31`). You can
    add multiple categories to the post by adding a new line starting
    with `-` below the previous category. You can write whatever topic
    word or phrase you want for this. See the YAML metadata of [this
    post](https://github.com/seedcase-project/seedcase-project/blob/main/community/posts/adding-posts/index.qmd)
    for an example of what it should look like.

4.  Then, you can start writing the content of the post below the `---`
    under the metadata. You need to write posts in Markdown (see this
    [guide](https://quarto.org/docs/authoring/markdown-basics.html) for
    how to write Markdown).

5.  After you are done writing, the final step is to get the post into
    the `seedcase-project` Git history. This step depends on if you
    cloned the repository or if you are writing directly in GitHub.

    -   In GitHub, it is relatively simple. At the bottom of the page is
        a section called "Commit changes", where there is a text box to
        write a "commit message" and a green button to "commit changes".
        Write a short message about what you are adding and optionally
        why. Below that message is a choice to create a new branch and
        start a pull request. You will probably be forced to select that
        option.

    -   If cloned, you will need to create a new branch and add and
        commit the new file with Git. Depending on what IDE or
        application you use will change how you do these actions. Since
        the command line is a common way of working with Git, I'll show
        the commands to run for that:

        ``` bash
        # Create and move to a new branch. 
        # Call the branch any name you want, 
        # I'll use the `adding-new-post`.
        git checkout -b adding-new-post
        # Replace `NEW_FILE` with the actual name of the file
        git add NEW_FILE 
        # Add a short message about what you are committing
        git commit -m "New post about BRIEF_DESCRIPTION"
        # Push the changes up to GitHub
        git push origin adding-new-post
        # Switch to the main branch
        git checkout main
        ```

        After pushing up the GitHub, you will need to go to the
        repository and create a new Pull Request from your newly pushed
        branch.

6.  You are all done! That's it :smile:

More details about creating posts can be found on the [Quarto
documentations](https://quarto.org/docs/websites/website-blog.html#posts-directory).
