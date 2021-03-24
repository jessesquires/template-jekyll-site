.DEFAULT: build

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: install
install:
	bundle install
	yarn install

.PHONY: update-all
update-all: update-bundle update-yarn

.PHONY: update-bundle
update-bundle:
	bundle update --all
	bundle update --bundler

.PHONY: update-yarn
update-yarn:
	yarn upgrade --latest

.PHONY: watch
watch:
	bundle exec jekyll build --watch

.PHONY: incr
incr:
	bundle exec jekyll build --watch --incremental

.PHONY: future
future:
	bundle exec jekyll build --watch --future

.PHONY: pub
pub:
	./scripts/publish.zsh

.PHONY: tags
tags:
	./scripts/tag_and_publish.zsh $(tag)

.PHONY: deploy-github
deploy-github:
	./scripts/deploy_github.zsh

.PHONY: image-optim
image-optim:
	./scripts/imageoptim.zsh $(files)
