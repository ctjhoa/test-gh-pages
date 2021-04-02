#!/bin/bash

NEW_DIST="dist.$(git rev-parse HEAD)"
cp -r dist "$NEW_DIST"
git add "$NEW_DIST"
git commit -a --allow-empty-message -m ''
git co gh-pages
git cherry-pick "$(git rev-parse HEAD)"
git push origin gh-pages
