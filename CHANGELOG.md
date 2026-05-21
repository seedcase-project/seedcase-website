# Changelog

Since we follow
[Conventional Commits](https://decisions.seedcase-project.org/why-conventional-commits/),
we're able to automatically create formal "releases" of the website
based on our commit messages. Releases in the context of websites are
simply snapshots in time of the website content. We use
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen/)
to automatically create these releases using
[SemVer](https://semverdoc.org) as the version numbering scheme.

Because releases are created based on commit messages, a new release is
created quite often---sometimes several times in a day. This also means
that any individual release will not have many changes within it. Below
is a list of the releases we've made so far, along with what was changed
within each release.

## 0.2.0 (2026-05-21)

### Feat

- :sparkles: add new repos to roadmap (#402)
- :busts_in_silhouette: add Joel to about page; add him to sh helper (#372)
- :sparkles: section describing what we actually want to build (#358)
- :sparkles: add reference and logos to AU and SDCA (#357)
- :chart_with_upwards_trend: add page visit tracker (#312)
- add alt text to seedcase project logo
- add aria-label to github icon in navbar
- :sparkles: add nnf to footer with link
- :sparkles: add acknowledgment section
- :sparkles: add software products section
- :sparkles: add our goals cards section with rewritten goals
- add css style file
- :fire: remove toc and sidebar
- :sparkles: add logo to navbar, plus navbars to the left to be more obvious
- update with more snippets
- implement code snippet
- add conventional commits to recommended extensions
- add code spell checker
- add navigation arrows to page footers

### Fix

- :bug: set landing page card width so they're the same in narrow windows (#416)
- :bug: broken links (#411)
- :pencil2: align `README` header with website (#412)
- :pencil2: update Seedcase font and icon link in `README.md` (#410)
- add image alt text to logo (#331)
- re-add nnf-application to excluded files (#327)
- :truck: move to `includes/` to fit reference in`_quarto.yml` (#318)
- :art: use current css elements (#297)
- :pencil2: change landing page theme from scss to css (#285)
- shorten alt text
- elaborate on alt labels
- only include design doc button
- :fire: remove old favicons
- :memo: Update team list and images
- remove spelling tool from setting
- remove duplicate of plantuml
- minor text modifications

### Refactor

- ♻️ update landing page content and style (#408)
- 🔥 clean up navbar by removing "Community" and "Design" (#413)
- 🔥 remove software and software-related from how to guides and reference (#405)
- ♻️ use callout for link to GitHub roadmap (#407)
- :recycle: update Flower's status to done (#406)
- :memo: update `spaid` description in roadmap (#404)
- :memo: update product descriptions (#399)
- :memo: update landing page header (#401)
- :recycle: update roadmap with latest changes (#356)
- :recycle: Markdown form for CC-BY license (#351)
- :recycle: update roadmap based on latest changes (#347)
- :recycle: improve and update README (#348)
- :recycle: update landing page to reflect current state (#349)
- :recycle: update team titles (#346)
- :fire: remove software products section on landing page (#330)
- ♻️ move flower to be before propagate (#298)
- ♻️ update landing page style (#283)
- :fire: remove old file with goals
- :lipstick: change about template to marquee
- :wrench: Small, minor edits to code snippets during review

## v2021.05.04 (2022-05-02)
