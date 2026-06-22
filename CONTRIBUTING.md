# Contributing

## :bug: Issues and bugs

The easiest way to contribute is to report issues or bugs that you might find
while reading through the website. You can do this by creating a
[new](https://github.com/seedcase-project/seedcase-website/issues/new/choose)
issue on our GitHub repository.

## :pencil2: Adding or modifying content

If you would like to contribute content, please check out our
[guidebook](https://guidebook.seedcase-project.org/) for more specific details
on how we work and develop. It is a regularly evolving document, so is at
various states of completion.

To contribute to `seedcase-website`, you first need to install
[uv](https://docs.astral.sh/uv/) and
[justfile](https://just.systems/man/en/packages.html). We use uv and justfile to
manage our project, such as to run checks and test the template. Both the uv and
justfile websites have a more detailed guide on using uv, but below are some
simple instructions to get you started.

It's easiest to install uv and justfile using
[pipx](https://pipx.pypa.io/latest/), so install that first. Then, install uv
and justfile by running:

```bash
pipx install uv rust-just
```

We keep all our development workflows in the `justfile`, so you can explore it
to see what commands are available. To see a list of commands available, run:

```bash
just
```

As you contribute, make sure your changes will pass our tests by opening a
terminal so that the working directory is the root of this project's repository
and running:

```bash
just run-all
```

When committing changes, please try to follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits/) as
Git messages. If you don't use Conventional Commits when making a commit, we
will revise the pull request title to follow that format. We use squash merges
when merging pull requests, so all other commits in the pull request will be
squashed into one commit.

## :file_folder: Explanation of files and folders

This is a description of some of the files in this repository.

- `.copier-answers.yml`: Contains the answers you gave when copying the project
  from the template. **You should not modify this file directly.**
- `.github/`: Contains GitHub-specific files, such as issue and pull request
  templates, workflows,
  [dependabot](https://docs.github.com/en/code-security/tutorials/secure-your-dependencies/dependabot-quickstart-guide)
  configuration, pull request templates, and a
  [CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)
  file.
- `_quarto.yml`: Quarto configuration file for the website, including settings
  for the website, such as the theme, navigation, and other options.
- `_metadata.yml`: Quarto metadata file for the website, including information
  about the project, such as the titles and GitHub names.
- `.gitignore`: This ignore file tells Git which files to not track. Unless you
  know what you are doing, it's best to not touch this file.
- `.pre-commit-config.yaml`: [Pre-commit](https://pre-commit.com/) configuration
  file for managing and running checks before each commit.
- `.config/`: Contains configuration files for various tools used in the
  project, such as:
  - `typos.toml`: [typos](https://github.com/crate-ci/typos) spell checker
    configuration file.
  - `rumdl.toml` and `panache.toml`: [rumdl](https://rumdl.dev) and
    [Panache](https://panache.bz) configuration file for formatting Markdown
    files in the project.
- `.editorconfig`: Editor configuration file for
  [EditorConfig](https://editorconfig.org/) to maintain consistent coding styles
  across different editors and IDEs.
- `justfile`: [`just`](https://just.systems/man/en/) configuration file for
  scripting project tasks.
- `CHANGELOG.md`: Changelog file for tracking changes in the project.
- `CONTRIBUTING.md`: Guidelines for contributing to the project.
