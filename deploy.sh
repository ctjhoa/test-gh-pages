#!/bin/bash

NEW_DIST="dist.$(git rev-parse HEAD)"
cp -r dist "$NEW_DIST"
git add "$NEW_DIST"
git commit --allow-empty-message -m ''
git checkout gh-pages -- "$NEW_DIST"
