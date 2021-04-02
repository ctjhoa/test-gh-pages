#!/bin/bash

GIT_REF=$(git rev-parse HEAD)
NEW_DIST="dist.$GIT_REF"
cp -r dist "$NEW_DIST"
git checkout gh-pages
git add "$NEW_DIST"
git commit -m "Release $GIT_REF"
git push origin gh-pages
