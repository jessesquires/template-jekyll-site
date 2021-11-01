# template-jekyll-site [![CI](https://github.com/jessesquires/template-jekyll-site/actions/workflows/ci.yml/badge.svg)](https://github.com/jessesquires/template-jekyll-site/actions/workflows/ci.yml)

*Template repository for Jekyll websites*

## About

This repo contains default project files for Jekyll-based website projects.

## Setup

This setup mostly assumes that you are [building a site with Jekyll on NearlyFreeSpeech.net](https://www.jessesquires.com/blog/2017/09/10/building-a-site-with-jekyll-on-nfsn/), but can be easily adapted for other hosts.

## Requirements

- [Bundler](https://bundler.io)
- [NPM](https://www.npmjs.com)

## Dependencies

### Gems

- [jekyll](https://jekyllrb.com) ([Latest](https://github.com/jekyll/jekyll/releases/latest)) ([Cheat Sheet](https://learn.cloudcannon.com/jekyll-cheat-sheet/))
- [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)
- [jekyll-paginate](https://github.com/jekyll/jekyll-paginate) or [jekyll-paginate-v2](https://github.com/sverrirs/jekyll-paginate-v2)

#### Updating Gems

```bash
$ make update-bundle
```

### NPM packages

- [Bootstrap](https://getbootstrap.com) ([package](https://www.npmjs.com/package/bootstrap))
- [Bootstrap Icons](https://icons.getbootstrap.com) ([package](https://www.npmjs.com/package/bootstrap-icons))

#### Updating packages

```bash
$ make update-deps
```

## Usage

### Installation

```bash
$ git clone https://github.com/jessesquires/template-jekyll-site
$ cd template-jekyll-site/
$ make install
```

### Building the site

```bash
$ make
```

### Previewing the site locally

```bash
$ make preview
```

## Validation

### Feeds
- https://validator.w3.org/feed/
- https://json-feed-validator.herokuapp.com

### Markup
- https://validator.w3.org/nu/

### Structured Data
- https://cards-dev.twitter.com/validator
- https://www.opengraphcheck.com
- https://search.google.com/structured-data/testing-tool

## License

This work is released under the [CC0 1.0 Universal (CC0 1.0) license](https://creativecommons.org/publicdomain/zero/1.0/). See [`LICENSE`](https://github.com/techworkersco/techworkersco.github.io/blob/master/LICENSE).

All code is licensed under an [MIT License](https://opensource.org/licenses/MIT).
