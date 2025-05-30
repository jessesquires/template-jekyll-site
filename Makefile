export JEKYLL_ENV=development

.DEFAULT: build

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: install
install:
	bundle install
	npm install

.PHONY: update
update: update-bundle update-npm

.PHONY: update-bundle
update-bundle:
	bundle update --all
	bundle update --bundler

.PHONY: update-npm
update-npm:
	npm update

.PHONY: watch
watch:
	bundle exec jekyll build --watch

.PHONY: drafts
drafts:
	bundle exec jekyll build
	bundle exec jekyll build --drafts --watch --incremental

.PHONY: incr
incr:
	bundle exec jekyll build
	bundle exec jekyll build --watch --incremental

.PHONY: preview
preview:
	bundle exec jekyll serve --watch

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
