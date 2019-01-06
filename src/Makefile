###
### Makefile for building and pushing site
###

GITHUB_PAGES_BRANCH=gh-pages
THEME = hugo-finite

MARKDOWN = python3 -m markdown
BASEDIR = .

html:
	hugo --theme=$(THEME)

develop:
	hugo server --theme=$(THEME) --buildDrafts --watch

github: html
	cp -r public/* ../
	git add -A; git commit -m "Rebuilt site" ; git push

.PHONY: html clean develop
