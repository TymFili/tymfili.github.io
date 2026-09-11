# Personal Website & Academic Hub

Source code for my personal website, mathematical logic lecture script, and teaching resources, hosted at [tymfili.github.io](https://tymfili.github.io).

## Overview

* **Homepage & About:** Short background and research interests in theoretical computer science and discrete mathematics.
* **Blog:** Notes and expositions on logic, proof theory, and discrete mathematics.
* **Teaching:** Course notes, problem sheets, and study materials, including the draft monograph *Introduction to Mathematical Logic*.

## Structure

```text
├── _pages/       # Static site pages (About, Teaching, Blog index)
├── _posts/       # Markdown articles and mathematical write-ups
├── assets/
│   ├── img/      # Standalone figures and vector graphics (SVG)
│   └── pdf/      # Compiled lecture notes and handouts
└── _config.yml   # Jekyll configuration and site metadata
cat << 'EOF' > README.md
# Personal Website & Academic Hub

Source code and materials for my personal website, hosted at [tymfili.github.io](https://tymfili.github.io).

## Overview

* **About:** Academic background and interests in theoretical computer science and discrete mathematics.
* **Teaching:** Course resources, study materials, and the draft lecture script *Introduction to Mathematical Logic*.
* **Blog:** Notes and expositions on mathematical logic, proof theory, and discrete mathematics.

## Repository Structure

* `_pages/` — Core site pages (About, Teaching, Blog index).
* `_posts/` — Mathematical notes and articles.
* `assets/pdf/` — Compiled lecture notes and handouts.
* `assets/img/` — Figures and standalone vector graphics (SVG).
* `_config.yml` — Site metadata and layout configuration.

## Deployment

The website is compiled and published automatically to GitHub Pages using GitHub Actions whenever commits are pushed to the `main` branch.

## Licence

* **Manuscripts, lecture notes, and diagrams:** [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)
* **Website source code:** [MIT Licence](LICENSE.md), adapted from the [al-folio](https://github.com/alshedivat/al-folio) theme.
